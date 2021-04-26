import 'dart:convert';

import 'package:vsaude_app/shared/constates.dart';

class LoginModelPage {
  String email;
  String password;
  String mobileProjectId = projecId;

  LoginModelPage({
    this.email,
    this.password,
    this.mobileProjectId,
  });

  LoginModelPage copyWith({
    String email,
    String password,
    String mobileProjectId,
  }) {
    return LoginModelPage(
      email: email ?? this.email,
      password: password ?? this.password,
      mobileProjectId: mobileProjectId ?? this.mobileProjectId,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'mobileProjectId': mobileProjectId,
    };
  }

  factory LoginModelPage.fromMap(Map<String, dynamic> map) {
    return LoginModelPage(
      email: map['email'],
      password: map['password'],
      mobileProjectId: map['mobileProjectId'],
    );
  }

  String toJson() => json.encode(toMap());

  factory LoginModelPage.fromJson(String source) =>
      LoginModelPage.fromMap(json.decode(source));

  @override
  String toString() =>
      'LoginModelPage(email: $email, password: $password, mobileProjectId: $mobileProjectId)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginModelPage &&
        other.email == email &&
        other.password == password &&
        other.mobileProjectId == mobileProjectId;
  }

  @override
  int get hashCode =>
      email.hashCode ^ password.hashCode ^ mobileProjectId.hashCode;
}
