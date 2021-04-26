import 'package:flutter/material.dart';
import 'package:vsaude_app/page/login/login_model_page.dart';
import 'package:vsaude_app/page/login/repository/login_reposotory.dart';
import '../exports_widgets_login.dart';

class CardLoginWidget extends StatefulWidget {
  CardLoginWidget({Key key}) : super(key: key);

  @override
  _CardLoginWidgetState createState() => _CardLoginWidgetState();
}

class _CardLoginWidgetState extends State<CardLoginWidget> {
  LoginRepository repository;
  LoginModelPage loginModelPage;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Container(
        width: constrainsts.maxHeight,
        height: constrainsts.maxWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(15),
        child: FormLogin(),
      );
    });
  }
}
