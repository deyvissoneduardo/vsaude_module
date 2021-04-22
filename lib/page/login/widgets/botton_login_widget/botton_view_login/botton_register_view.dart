import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class BottonRegisterView extends StatelessWidget {
  VoidCallback onPressed;

  BottonRegisterView({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          'Não Tem conta?',
          style: AppTextStyle.textBlue15,
        ),
        const SizedBox(
          height: 5,
        ),
        TextButton(
          onPressed: this.onPressed,
          child: Text(
            'Cadastre - se',
            style: AppTextStyle.textBoldBlue20,
          ),
        )
      ],
    ));
  }
}
