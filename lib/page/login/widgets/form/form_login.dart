import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/Validador.dart';

import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/models/login_model/login_model.dart';
import 'package:vsaude_app/page/login/controller/login_controller.dart';
import 'package:vsaude_app/page/login/login_model_page.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';
import 'package:vsaude_app/shared/valid_form/valid_form.dart';

import '../exports_widgets_login.dart';

class FormLogin extends StatefulWidget {
  String email;
  String password;
  FormLogin({Key key, this.email, this.password}) : super(key: key);

  @override
  _FormLoginState createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  String email;
  String password;
  // controladores
  final FormController _formController = FormController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  //instancias
  final LoginRepository repository = LoginRepository(Dio());
  final LoginModelPage modelPage = LoginModelPage();
  final LoginContoller loginContoller = LoginContoller();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.center,
        child: Form(
          key: _formController.key,
          child: ListView(
            children: [
              // campo email
              _fieldEmail(),
              const SizedBox(height: 8),
              // campo senha
              _fieldPassword(),
              const SizedBox(height: 8),
              // btn logar
              BottonLoginView(
                onPressed: () {
                  _validFormLogin();
                },
              ),
              // btn reset
              BottonResetPasswordLogin(
                onPressed: () {},
              ),
              BottonRegisterView(onPressed: () {})
            ],
          ),
        ),
      );
    });
  }

  _validFormLogin() async {
    try {
      if (_formController.valid()) {
        await loginContoller.loggerUserBloc(
            LoginModel(
                userNameOrEmailAddress: modelPage.email,
                password: modelPage.password,
                mobileProjectId: modelPage.mobileProjectId),
            context);
      }
      print(modelPage.toString());
    } catch (err) {
      print('erro login $err');
      return err;
    }
  }

  // _saveUser() async {
  //   await repository.logerUser(LoginModel(
  //       userNameOrEmailAddress: _controllerEmail.text,
  //       password: _controllerPassword.text,
  //       mobileProjectId: mobileProjectId));
  //   print('usuario logado');
  //   Navigator.push(context, MaterialPageRoute(builder: (_) => HomePage()));
  // }

  // _errUser(DioError err) {
  //   final _dioerro = DioError(error: err.response);
  //   print('***********************');
  //   print(_dioerro);
  //   print('Login failed');
  //   print('***********************');
  //   return null;
  // }

  Widget _fieldEmail() {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: FieldLoginFormWidget(
        controller: _controllerEmail,
        icon: Icon(
          Icons.email_outlined,
          color: AppColors.corIconBlue,
        ),
        hintText: 'E-mail',
        textInputType: TextInputType.emailAddress,
        inputFormater: [],
        onSaved: (value) => modelPage.email = value,
        validator: (value) {
          return Validador()
              .add(Validar.EMAIL, msg: 'Digite um e-mail valido')
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
      ),
    );
  }

  Widget _fieldPassword() {
    return Container(
      padding: EdgeInsets.only(right: 10, left: 10),
      child: FieldLoginFormWidget(
        controller: _controllerPassword,
        obscure: true,
        hintText: 'Senha',
        icon: Icon(
          Icons.security_outlined,
          color: AppColors.corIconBlue,
        ),
        textInputType: TextInputType.visiblePassword,
        onSaved: (value) => modelPage.password = value,
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
