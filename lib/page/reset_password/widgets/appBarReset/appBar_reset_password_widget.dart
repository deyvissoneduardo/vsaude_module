import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class AppbarResetPassword extends PreferredSize {
  AppbarResetPassword()
      : super(
            preferredSize: Size(double.infinity, 56),
            child: AppBar(
                title: Center(
                    child: Text('Recupera senha',
                        style: AppTextStyle.textBoldBlue20))));
}
