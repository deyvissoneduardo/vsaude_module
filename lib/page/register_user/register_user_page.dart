import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/core/app_colors.dart';
import 'package:vsaude_app/core/app_text_style.dart';
import 'package:vsaude_app/page/register_user/controller/register_user_controller.dart';
import 'package:vsaude_app/page/register_user/widgets/exports_widgets_register.dart';
import 'package:vsaude_app/shared/constates.dart';
import 'package:vsaude_app/shared/progress_indicator/progress_indicator_widget.dart';

class RegisterUserPage extends StatefulWidget {
  RegisterUserPage({Key key}) : super(key: key);

  @override
  _RegisterUserPageState createState() => _RegisterUserPageState();
}

class _RegisterUserPageState
    extends ModularState<RegisterUserPage, RegisterUserController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBarWidgetRegister(),
        body: Container(
          alignment: Alignment.center,
          child: Form(
            key: controller.formController.key,
            child: ListView(
              children: [
                FieldNameRegister(
                  controller: controller.controllerName,
                  onSaved: (value) => controller.modelPage.name = value,
                ),
                const SizedBox(height: 8),
                FieldEmailRegister(
                  controller: controller.controllerEmail,
                  onSaved: (value) => controller.modelPage.email = value,
                ),
                const SizedBox(height: 8),
                FieldPhoneRegister(
                  controller: controller.controllerPhone,
                  onSaved: (value) => controller.modelPage.phone = value,
                ),
                const SizedBox(height: 8),
                FieldPasswordRegister(
                  controller: controller.controllerPassword,
                  onSaved: (value) => controller.modelPage.password = value,
                ),
                const SizedBox(height: 8),
                BottonRegisterWidget(onPressed: () => saveUser())
              ],
            ),
          ),
        ),
      );
    });
  }

  saveUser() {
    if (controller.formController.validForm()) {
      controller.bloc.insertUser(
        projecId,
        tenantId,
        controller.modelPage.name,
        controller.modelPage.email,
        controller.modelPage.phone,
        controller.modelPage.password,
      );
      ProgressIndicatorWidget(msg: 'Salvando Usuario');
    }
  }
}
