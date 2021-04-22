import 'package:flutter/material.dart';
import 'package:vsaude_app/shared/export_shared.dart';

class LogoLoginWidget extends StatelessWidget {
  LogoLoginWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.35,
        child: AppLogoCenter());
  }
}
