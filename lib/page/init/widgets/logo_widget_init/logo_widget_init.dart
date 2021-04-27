import 'package:flutter/material.dart';

class LogoWidgetInit extends StatelessWidget {
  const LogoWidgetInit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: FlutterLogo(
        size: 120,
      ),
    );
  }
}
