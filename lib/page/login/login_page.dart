import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/page/login/controller/login_controller.dart';
import 'package:vsaude_app/page/login/widgets/exports_widgets_login.dart';
import 'package:vsaude_app/shared/constates.dart';
import 'package:vsaude_app/shared/progress_indicator/progress_indicator_widget.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Scaffold(
        appBar: AppBarLoginWidget(),
        body: Align(
          alignment: Alignment.center,
          child: Form(
            key: controller.formController.key,
            child: ListView(
              children: [
                LogoLoginWidget(),
                SizedBox(height: 15),
                FielEmail(
                  controller: controller.controllerEmail,
                  onSaved: (value) => controller.modelPage.email = value,
                ),
                const SizedBox(height: 8),
                // campo senha
                FielPassword(
                  controller: controller.controllerPassword,
                  onSaved: (value) => controller.modelPage.password = value,
                ),
                const SizedBox(height: 8),
                // btn logar
                Container(
                  width: constrainsts.maxHeight,
                  child: BottonLoginView(
                    onPressed: () {
                      if (controller.formController.validForm()) {
                        controller.bloc.singIn(
                          projecId,
                          controller.modelPage.email,
                          controller.modelPage.password,
                        );
                        ProgressIndicatorWidget(msg: 'Carregando...');
                        Navigator.pushReplacementNamed(context, '/home');
                      }
                    },
                  ),
                ),
                //btn reset
                Container(
                  child: BottonResetPasswordLogin(
                    onPressed: () {},
                  ),
                ),
                // btn register
                Container(
                    child: BottonRegisterView(
                  onPressed: () =>
                      Navigator.pushNamed(context, '/register_user'),
                )),
              ],
            ),
          ),
        ),
      );
    });
  }
}
