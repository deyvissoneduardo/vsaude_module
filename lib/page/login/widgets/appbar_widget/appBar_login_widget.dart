import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class AppBarLoginWidget extends PreferredSize {
  AppBarLoginWidget()
      : super(
            preferredSize: Size(double.infinity, 56),
            child: AppBar(
                elevation: 0,
                backgroundColor: Colors.white38,
                title: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Acesse sua conta',
                    style: AppTextStyle.textBoldBlue20,
                  ),
                )));
}
