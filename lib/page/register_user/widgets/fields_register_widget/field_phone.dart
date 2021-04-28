import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/validadores.dart';

import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/register_user/widgets/exports_widgets_register.dart';

class FieldPhoneRegister extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;

  FieldPhoneRegister({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FieldPhoneRegisterState createState() => _FieldPhoneRegisterState();
}

class _FieldPhoneRegisterState extends State<FieldPhoneRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: TextFormFieldWidget(
        controller: this.widget.controller,
        icon: Icon(
          Icons.phone_android_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'Contato',
        inputFormatters: [
          TelefoneInputFormatter(),
          FilteringTextInputFormatter.digitsOnly,
        ],
        inputType: TextInputType.phone,
        onSaved: this.widget.onSaved,
        validator: (value) {
          return Validador()
              .minLength(10, msg: 'Falta Número')
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
      ),
    );
  }
}
