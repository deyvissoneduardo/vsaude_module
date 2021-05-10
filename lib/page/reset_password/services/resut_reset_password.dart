import 'package:flutter/material.dart';

class ResultResetPassword {
  String token;

  ResultResetPassword({this.token});

  Map toJson() => {'token': this.token};

  ResultResetPassword.fromJson(json);

  ResultResetPassword.add(this.token);

  @override
  String toString() => '$token';

  // pega o token gerado na notificacao
  getToken() {
    return this.token;
  }

  // notifica mudanca no token
  addToken(String newToken) {
    this.token = newToken;
    ResultResetPassword.add(newToken);
    return newToken;
  }
}
