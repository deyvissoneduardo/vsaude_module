import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';

import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/register_user/widgets/exports_widgets_register.dart';

class FieldEmailRegister extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;

  FieldEmailRegister({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FieldEmailRegisterState createState() => _FieldEmailRegisterState();
}

class _FieldEmailRegisterState extends State<FieldEmailRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: TextFormFieldWidget(
        controller: this.widget.controller,
        icon: Icon(
          Icons.person_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'E-mail',
        inputType: TextInputType.emailAddress,
        onSaved: this.widget.onSaved,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .add(Validar.EMAIL, msg: 'Digite e-mail valido')
              .valido(value);
        },
        autofocus: true,
      ),
    );
  }
}
