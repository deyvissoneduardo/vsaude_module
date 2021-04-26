import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:vsaude_app/models/login_model/login_model.dart';
import 'package:vsaude_app/page/login/login_bloc.dart';
import 'package:vsaude_app/page/login/login_model_page.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';
import 'package:vsaude_app/page/login/services/api/login_result.dart';
import 'package:vsaude_app/shared/constates.dart';

class LoginContoller {
  LoginRepository repository = LoginRepository(Dio());
  Dio dio;
  LoginBloc bloc;
  LoginModelPage modelPage;
  LoginContoller({
    this.dio,
    this.repository,
  });

  Future<void> loggerUserBloc(LoginModel model, BuildContext context) async {
    try {
      await bloc.singIn(
        modelPage.email,
        modelPage.password,
        modelPage.mobileProjectId,
      );
      print('usuario logado');
      return _interctor();
    } catch (err) {
      print('erro controller $err');
      return err;
    }
  }

  loginFailed(DioError err) {
    final _dioerro = DioError(error: err.response);
    print('***********************');
    print(_dioerro);
    print('Login failed');
    print('***********************');
    return _interctor();
  }

  // metodo de interctor
  _interctor() async {
    dio.interceptors
      ..add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
        await _onRequest(options);
      }, onResponse: (Response response) async {
        await _onResponse(response);
      }, onError: (DioError err) async {
        await _onError(err);
      }))
      ..add(LogInterceptor(responseBody: false));

    Response response = await dio.post<LoginResult>(baseUrlLogin);
    print('**********response*************');
    print(response.data);
    print('***********************');
    return response;
  }

  // request do intercptor
  _onRequest(RequestOptions options) {
    //// antes que a solicitação seja enviada
    print('********entrou no request ***************');
    // resolver a solicitação com alguns dados personalizados,
    Response<LoginResult> response = Response();
    _emailInvalid(response);
    _passwordInvali(response);
    print('***********************');
    return options;
  }

  // verifica email no login
  _emailInvalid(Response response) {
    if (response.statusCode == 500 ||
        response.statusMessage == 'InvalidUserNameOrEmailAddress') {
      print('***entrou no email *****');
      dio.interceptors.requestLock.lock();
      response.statusCode = 200;
      response.statusMessage = 'E-mail invalido';
      dio.interceptors.requestLock.unlock();
      return response;
    }
    return false;
  }

  //senha invalida
  _passwordInvali(Response response) {
    if (response.statusCode != 500 &&
        response.statusMessage == 'InvalidPassword') {
      print('***entrou pasword *****');
      dio.interceptors.requestLock.lock();
      response.statusCode = 200;
      response.statusMessage = 'Senha Invalida';
      dio.interceptors.requestLock.unlock();
      return response;
    }
    return false;
  }

  // response do intercptor
  _onResponse(Response response) {
    // Faça algo com os dados de resposta
    print('***********entrou no response**********');
    print(response.statusCode);
    print(response.statusMessage);
    print('***********************');
    return response;
  }

  // errod do intercor
  _onError(DioError err) {
    print('**********entrou no DioError*************');
    return err;
  }
}
