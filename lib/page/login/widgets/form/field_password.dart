import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';

import 'package:vsaude_app/core/exports_app_core.dart';

import '../exports_widgets_login.dart';

class FielPassword extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;
  FielPassword({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FielPasswordState createState() => _FielPasswordState();
}

class _FielPasswordState extends State<FielPassword> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: FieldLoginFormWidget(
        controller: this.widget.controller,
        obscure: true,
        hintText: 'Senha',
        icon: Icon(
          Icons.security_outlined,
          color: AppColors.corIconBlue,
        ),
        textInputType: TextInputType.visiblePassword,
        onSaved: (value) => this.widget.onSaved,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo obrigatorio')
              .minLength(6, msg: 'Minino 6 caracters')
              .valido(value);
        },
      ),
    );
  }
}
