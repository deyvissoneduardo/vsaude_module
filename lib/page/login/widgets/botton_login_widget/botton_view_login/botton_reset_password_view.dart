import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class BottonResetPasswordLogin extends StatelessWidget {
  VoidCallback onPressed;
  BottonResetPasswordLogin({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.only(right: 10, top: 10),
        child: TextButton(
          onPressed: this.onPressed,
          child: Text(
            'Esqueci a senha',
            style: AppTextStyle.textBlue15,
          ),
        ));
  }
}
