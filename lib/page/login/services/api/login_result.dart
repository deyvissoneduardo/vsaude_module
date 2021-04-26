import 'dart:convert';

class LoginResult {
  String accessToken;
  String encryptedAccessToken;
  int expireInSeconds;
  int userId;

  LoginResult({
    this.accessToken,
    this.encryptedAccessToken,
    this.expireInSeconds,
    this.userId,
  });

  LoginResult copyWith({
    String accessToken,
    String encryptedAccessToken,
    int expireInSeconds,
    int userId,
  }) {
    return LoginResult(
      accessToken: accessToken ?? this.accessToken,
      encryptedAccessToken: encryptedAccessToken ?? this.encryptedAccessToken,
      expireInSeconds: expireInSeconds ?? this.expireInSeconds,
      userId: userId ?? this.userId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'userId': userId,
    };
  }

  factory LoginResult.fromMap(Map<String, dynamic> map) {
    return LoginResult(
      accessToken: map['accessToken'],
      encryptedAccessToken: map['encryptedAccessToken'],
      expireInSeconds: map['expireInSeconds'],
      userId: map['userId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginResult.fromJson(String source) =>
      LoginResult.fromMap(json.decode(source));

  @override
  String toString() {
    return 'LoginResult(accessToken: $accessToken, encryptedAccessToken: $encryptedAccessToken, expireInSeconds: $expireInSeconds, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginResult &&
        other.accessToken == accessToken &&
        other.encryptedAccessToken == encryptedAccessToken &&
        other.expireInSeconds == expireInSeconds &&
        other.userId == userId;
  }

  @override
  int get hashCode {
    return accessToken.hashCode ^
        encryptedAccessToken.hashCode ^
        expireInSeconds.hashCode ^
        userId.hashCode;
  }
}
