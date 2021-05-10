import 'package:flutter/material.dart';
import 'package:validadores/validadores.dart';
import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/reset_password/widgets/form/field_widget/field_reset_password_widget.dart';

class FielPinReset extends StatefulWidget {
  TextEditingController controller;
  final Function onSaved;
  FielPinReset({
    Key key,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  _FielPinResetState createState() => _FielPinResetState();
}

class _FielPinResetState extends State<FielPinReset> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 3,
        padding: EdgeInsets.only(top: 10, right: 10, left: 10),
        child: FieldResetPasswordWidget(
            controller: this.widget.controller,
            icon: Icon(
              Icons.security_update,
              color: AppColors.corIconBlue,
            ),
            hintText: 'Token',
            textInputType: TextInputType.number,
            inputFormater: [],
            onSaved: this.widget.onSaved,
            validator: (value) {
              return Validador()
                  .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
                  .valido(value);
            }));
  }
}
