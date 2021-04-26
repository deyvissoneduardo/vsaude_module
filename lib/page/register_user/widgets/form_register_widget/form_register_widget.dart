import 'package:flutter/material.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';
import 'package:validadores/validadores.dart';
import 'package:vsaude_app/core/app_colors.dart';
import 'package:vsaude_app/page/register_user/widgets/text_form_widget_register/text_form_widget_register.dart';

class FormRegisterWidget extends StatefulWidget {
  FormRegisterWidget({Key key}) : super(key: key);

  @override
  _FormRegisterWidgetState createState() => _FormRegisterWidgetState();
}

class _FormRegisterWidgetState extends State<FormRegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Form(
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
        ));
  }

// campo nome
  Widget _fieldName() {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      child: TextFormFieldWidget(
        //controller: _controllerName,
        icon: Icon(
          Icons.person_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'Nome',
        inputType: TextInputType.emailAddress,
        onSaved: (value) => null,
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
        //controller: _controllerEmail,
        icon: Icon(
          Icons.email_outlined,
          color: AppColors.corIconBlue,
        ),
        hint: 'E-mail',
        inputType: TextInputType.emailAddress,
        onSaved: (value) => null,
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
        //controller: _controllerPhone,
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
        onSaved: (value) => null,
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
        //controller: _controllerPassword,
        obscure: true,
        hint: 'Senha',
        icon: Icon(
          Icons.security_outlined,
          color: AppColors.corIconBlue,
        ),
        inputType: TextInputType.visiblePassword,
        onSaved: (value) => null,
        validator: (value) {
          return Validador()
              .add(Validar.OBRIGATORIO, msg: 'Campo obrigatorio')
              .valido(value);
        },
      ),
    );
  }
}
