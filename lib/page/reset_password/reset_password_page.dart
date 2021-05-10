import 'package:flutter/material.dart';
import 'package:vsaude_app/page/register_user/widgets/exports_widgets_register.dart';
import 'package:vsaude_app/page/reset_password/widgets/form/field_pin_reset.dart';
import 'package:vsaude_app/shared/export_shared.dart';

import 'widgets/botton_reset_password_widget/botton_reset_password_widget.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FormController formController = FormController();
    TextEditingController controllerPin = TextEditingController();
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBarWidgetRegister(),
        body: Form(
          key: formController.key,
          child: Column(
            children: [
              AppLogoCenter(),
              const SizedBox(height: 10),
              FielPinReset(
                controller: controllerPin,
                onSaved: (value) => value,
              ),
              const SizedBox(height: 10),
              BottonResetPasswordWidget(
                onPressed: () {
                  if (formController.validForm()) {
                    print('valdio');
                  }
                },
              )
            ],
          ),
        ),
      );
    });
  }
}
