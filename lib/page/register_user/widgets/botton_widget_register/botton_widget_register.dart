import 'package:flutter/material.dart';

import 'package:vsaude_app/core/exports_app_core.dart';

class BottonRegisterWidget extends StatelessWidget {
  VoidCallback onPressed;
  BottonRegisterWidget({Key key, @required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
          child: Container(
              width: constrainsts.maxWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.colorCotainerBlue),
              child: Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5),
                child: TextButton(
                  onPressed: this.onPressed,
                  child: Text(
                    'Cadastrar',
                    style: AppTextStyle.textWrite15,
                  ),
                ),
              )));
    });
  }
}
