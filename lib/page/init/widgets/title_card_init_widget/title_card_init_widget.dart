import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class TitleCardInitWidget extends StatelessWidget {
  const TitleCardInitWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('What is Lorem Ipsum?', style: AppTextStyle.textBoldBlue20)
      ],
    );
  }
}
