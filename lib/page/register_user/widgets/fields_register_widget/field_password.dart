import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';

import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/register_user/widgets/exports_widgets_register.dart';

class FieldPasswordRegister extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;

  FieldPasswordRegister({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FieldPasswordRegisterState createState() => _FieldPasswordRegisterState();
}

class _FieldPasswordRegisterState extends State<FieldPasswordRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10, top: 10, left: 10),
      child: TextFormFieldWidget(
        controller: this.widget.controller,
        obscure: true,
        hint: 'Senha',
        icon: Icon(
          Icons.security_outlined,
          color: AppColors.corIconBlue,
        ),
        inputType: TextInputType.visiblePassword,
        onSaved: this.widget.onSaved,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo obrigatorio')
              .minLength(6, msg: 'Minimo de 6 caracters')
              .valido(value);
        },
      ),
    );
  }
}
