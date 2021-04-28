import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class AppBarWidgetRegister extends PreferredSize {
  AppBarWidgetRegister()
      : super(
            preferredSize: Size(double.infinity, 56),
            child: AppBar(
              elevation: 0,
              backgroundColor: AppColors.colorCotainerWrite,
              title: Container(
                alignment: Alignment.center,
                child: Text(
                  'Informe seus dados',
                  style: AppTextStyle.textBoldBlue20,
                ),
              ),
            ));
}
