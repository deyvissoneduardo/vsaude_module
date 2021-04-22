import 'package:flutter/material.dart';
import 'package:vsaude_app/page/login/login_page.dart';
import 'package:vsaude_app/routes/routes.dart';

class AppModule extends StatelessWidget {
  const AppModule({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: Routes.PAGE_HOME,
      onGenerateRoute: Routes.genareteRouter,
    );
  }
}
