import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:vsaude_app/core/app_colors.dart';
import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/init/init_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: controller.pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: [
            InitPage(),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.orange),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 25,
          curve: Curves.easeInExpo,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            controller.pageController.jumpToPage(index);
          },
          items: <BottomNavyBarItem>[
            BottomNavyBarItem(
              icon: Icon(Icons.home_outlined),
              title: Text('Home', style: AppTextStyle.textBlue15),
              activeColor: AppColors.corIconBlue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.watch_outlined),
              title: Text('Saúde', style: AppTextStyle.textBlue15),
              activeColor: AppColors.corIconBlue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.archive_outlined),
              title: Text('Arquivos', style: AppTextStyle.textBlue15),
              activeColor: AppColors.corIconBlue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.contacts_outlined),
              title: Text('Contatos', style: AppTextStyle.textBlue15),
              activeColor: AppColors.corIconBlue,
              textAlign: TextAlign.center,
            ),
            BottomNavyBarItem(
              icon: Icon(Icons.person_rounded),
              title: Text('Mais', style: AppTextStyle.textBlue15),
              activeColor: AppColors.corIconBlue,
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}
