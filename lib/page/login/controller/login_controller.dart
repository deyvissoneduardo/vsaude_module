import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:vsaude_app/page/login/login_bloc.dart';
import 'package:vsaude_app/page/login/login_model_page.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';
import 'package:vsaude_app/shared/constates.dart';
import 'package:vsaude_app/shared/valid_form/valid_form.dart';
part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  PageController pageController = PageController();
  LoginModelPage modelPage = LoginModelPage();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  FormController formController = FormController();
  final bloc = LoginBloc(LoginRepository(Dio()));

  @action
  formIsValid() {
    if (formController.validForm()) {
      bloc.singIn(
        projecId,
        modelPage.email,
        modelPage.password,
      );
      print('**************************');
    }
  }
}
