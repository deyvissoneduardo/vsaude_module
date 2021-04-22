import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class BottonLoginWidget extends StatelessWidget {
  VoidCallback onPressed;
  String textBotton;
  TextStyle textStyle;
  BottonLoginWidget(
      {Key key,
      @required this.onPressed,
      @required this.textBotton,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: TextButton(
        onPressed: this.onPressed,
        child: Text(this.textBotton,
            style: AppTextStyle.textWrite20 != null
                ? AppTextStyle.textWrite20
                : this.textStyle),
      ),
    );
  }
}
