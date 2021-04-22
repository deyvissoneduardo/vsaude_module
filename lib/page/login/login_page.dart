import 'package:flutter/material.dart';
import 'package:vsaude_app/page/login/widgets/exports_widgets_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Scaffold(
        appBar: AppBarLoginWidget(),
        body: Align(
          alignment: Alignment.center,
          child: ListView(
            children: [
              LogoLoginWidget(),
              SizedBox(
                height: 15,
              ),
              CardLoginWidget()
            ],
          ),
        ),
      );
    });
  }
}
