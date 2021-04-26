import 'package:flutter/material.dart';
import 'package:vsaude_app/page/register_user/widgets/appbar_widget_register/appbar_widget_register.dart';
import 'package:vsaude_app/page/register_user/widgets/card_widget_register/card_widget_register.dart';

class RegisterUserPage extends StatelessWidget {
  const RegisterUserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBarWidgetRegister(),
        body: CardWidgetResgister(),
      );
    });
  }
}
