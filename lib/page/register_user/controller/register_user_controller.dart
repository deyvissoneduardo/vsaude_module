import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:vsaude_app/models/register_user_model/register_user_model.dart';
import 'package:vsaude_app/page/register_user/register_user_bloc.dart';
import 'package:vsaude_app/page/register_user/register_user_model_page.dart';
import 'package:vsaude_app/page/register_user/repository/register_user_repository.dart';
import 'package:vsaude_app/shared/valid_form/valid_form.dart';
part 'register_user_controller.g.dart';

class RegisterUserController = _RegisterUserControllerBase
    with _$RegisterUserController;

abstract class _RegisterUserControllerBase with Store {
  var state = EnumRegisterUser;
  // controller inputs
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPhone = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  // controller form
  FormController formController = FormController();
  RegisterUserModelPage modelPage = RegisterUserModelPage();
  // controller api e repo
  final bloc = RegisterUserBloc(RegisterUserRepository(Dio()));
}
