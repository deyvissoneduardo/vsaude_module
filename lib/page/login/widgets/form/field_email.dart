import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

import '../exports_widgets_login.dart';

class FielEmail extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;
  FielEmail({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FielEmailState createState() => _FielEmailState();
}

class _FielEmailState extends State<FielEmail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: FieldLoginFormWidget(
        controller: this.widget.controller,
        icon: Icon(
          Icons.email_outlined,
          color: AppColors.corIconBlue,
        ),
        hintText: 'E-mail',
        textInputType: TextInputType.emailAddress,
        inputFormater: [],
        onSaved: this.widget.onSaved,
        validator: (value) {
          return Validador()
              .add(Validar.EMAIL, msg: 'Digite um e-mail valido')
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
      ),
    );
  }
}
