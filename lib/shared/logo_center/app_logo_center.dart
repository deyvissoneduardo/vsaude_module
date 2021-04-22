import 'package:flutter/material.dart';

class AppLogoCenter extends StatefulWidget {
  bool isUrl;
  String url;
  AppLogoCenter({Key key, this.isUrl, this.url}) : super(key: key);

  @override
  _AppLogoCenterState createState() => _AppLogoCenterState();
}

class _AppLogoCenterState extends State<AppLogoCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: FlutterLogo(
      duration: Duration(seconds: 3),
      size: 150,
    ));
  }

  Widget _logoDeful() {
    return FlutterLogo(
      duration: Duration(seconds: 3),
      size: 150,
    );
  }
}
