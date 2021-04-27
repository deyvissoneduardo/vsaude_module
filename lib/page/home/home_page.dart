import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:vsaude_app/core/app_colors.dart';
import 'package:vsaude_app/core/exports_app_core.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: [
            Container(color: Colors.blueGrey),
            Container(color: Colors.red),
            Container(color: Colors.green),
            Container(color: Colors.blue),
            Container(color: Colors.orange),
          ],
        ),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true,
          itemCornerRadius: 24,
          curve: Curves.easeInExpo,
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            _pageController.jumpToPage(index);
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
