import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

import '../botton_login_widget.dart';

class BottonLoginView extends StatelessWidget {
  VoidCallback onPressed;

  BottonLoginView({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          alignment: Alignment.center,
          width: constraints.minHeight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.corBottonBlue),
          child: Container(
            width: MediaQuery.of(context).size.width / 0.5,
            height: MediaQuery.of(context).size.height / 15,
            child: BottonLoginWidget(
              textBotton: 'Logar',
              onPressed: this.onPressed,
            ),
          ),
        ),
      );
    });
  }
}
