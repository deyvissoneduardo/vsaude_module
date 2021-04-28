import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:validadores/validadores.dart';

import 'package:vsaude_app/core/app_colors.dart';
import 'package:vsaude_app/page/register_user/register_user_bloc.dart';
import 'package:vsaude_app/page/register_user/register_user_model_page.dart';
import 'package:vsaude_app/page/register_user/repository/register_user_repository.dart';
import 'package:vsaude_app/page/register_user/widgets/botton_widget_register/botton_widget_register.dart';
import 'package:vsaude_app/page/register_user/widgets/text_form_widget_register/text_form_widget_register.dart';
import 'package:vsaude_app/shared/constates.dart';
import 'package:vsaude_app/shared/valid_form/valid_form.dart';

class FormRegisterWidget extends StatefulWidget {
  FormRegisterWidget({Key key}) : super(key: key);

  @override
  _FormRegisterWidgetState createState() => _FormRegisterWidgetState();
}

class _FormRegisterWidgetState extends State<FormRegisterWidget> {
  // controllers widgets
  FormController _formController = FormController();
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPhone = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  // instancias
  RegisterUserModelPage registerUserModelPage = RegisterUserModelPage();
  final bloc = RegisterUserBloc(RegisterUserRepository(Dio()));

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Form(
              key: _formController.key,
              child: Column(
                children: [
                  _fieldName(),
                  const SizedBox(height: 10),
                  _fieldEmail(),
                  const SizedBox(height: 10),
                  _fieldPhone(),
                  const SizedBox(height: 10),
                  _fieldPassword()
                ],
              ),
            ),
            BottonRegisterWidget(onPressed: () {
              if (_formController.validForm()) {
                try {
                  bloc.insertUser(
                    projecId,
                    tenantId,
                    _controllerName.text,
                    _controllerEmail.text,
                    _controllerPhone.text,
                    _controllerPassword.text,
                  );
                } catch (err) {
                  return err;
                }
              }
            })
          ],
        ));
  }

// campo nome
  Widget _fieldName() {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: TextFormFieldWidget(
        controller: _controllerName,
        icon: Icon(
          Icons.person_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'Nome',
        inputType: TextInputType.emailAddress,
        onSaved: (value) => registerUserModelPage.name,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
        autofocus: true,
      ),
    );
  }

// campo email
  Widget _fieldEmail() {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: TextFormFieldWidget(
        controller: _controllerEmail,
        icon: Icon(
          Icons.email_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'E-mail',
        inputType: TextInputType.emailAddress,
        onSaved: (value) => registerUserModelPage.email,
        validator: (value) {
          return Validador()
              .add(Validar.EMAIL, msg: 'Digite um e-mail valido')
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
      ),
    );
  }

// campo telefone
  Widget _fieldPhone() {
    return Container(
      padding: EdgeInsets.only(top: 10, right: 10, left: 10),
      child: TextFormFieldWidget(
        controller: _controllerPhone,
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
        onSaved: (value) => registerUserModelPage.phone,
        validator: (value) {
          return Validador()
              .minLength(10, msg: 'Falta Número')
              .add(Validar.OBRIGATORIO, msg: 'Campo Obrigatorio')
              .valido(value);
        },
      ),
    );
  }

  // campo senha
  Widget _fieldPassword() {
    return Container(
      padding: EdgeInsets.only(right: 10, top: 10, left: 10),
      child: TextFormFieldWidget(
        controller: _controllerPassword,
        obscure: true,
        hint: 'Senha',
        icon: Icon(
          Icons.security_outlined,
          color: AppColors.corIconBlue,
        ),
        inputType: TextInputType.visiblePassword,
        onSaved: (value) => registerUserModelPage.password,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo obrigatorio')
              .valido(value);
        },
      ),
    );
  }
}
