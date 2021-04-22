import 'package:flutter/material.dart';

class FormController {
  var key = GlobalKey<FormState>();

  bool valid() {
    var form = key.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void isValidEmail(String email) {
    if (email.isEmpty && !email.contains('@')) {
      print('campo obrigatorio');
    }
  }
}
