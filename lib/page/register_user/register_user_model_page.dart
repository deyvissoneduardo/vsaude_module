import 'dart:convert';

enum EnumRegisterUser { loanding, sucsess }

class RegisterUserModelPage {
  String name;
  String email;
  String phone;
  String password;

  RegisterUserModelPage({
    this.name,
    this.email,
    this.phone,
    this.password,
  });

  RegisterUserModelPage copyWith({
    String name,
    String email,
    String phone,
    String password,
  }) {
    return RegisterUserModelPage(
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory RegisterUserModelPage.fromMap(Map<String, dynamic> map) {
    return RegisterUserModelPage(
      name: map['name'],
      email: map['email'],
      phone: map['phone'],
      password: map['password'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegisterUserModelPage.fromJson(String source) =>
      RegisterUserModelPage.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RegisterUserModelPage(name: $name, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RegisterUserModelPage &&
        other.name == name &&
        other.email == email &&
        other.phone == phone &&
        other.password == password;
  }

  @override
  int get hashCode {
    return name.hashCode ^ email.hashCode ^ phone.hashCode ^ password.hashCode;
  }
}
