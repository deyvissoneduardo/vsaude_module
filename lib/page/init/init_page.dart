import 'package:flutter/material.dart';
import 'package:vsaude_app/page/init/widgets/card_widget_init/card_widget_init.dart';
import 'package:vsaude_app/page/init/widgets/logo_widget_init/logo_widget_init.dart';

class InitPage extends StatelessWidget {
  const InitPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: ListView(
          children: [
            LogoWidgetInit(),
            CardWidgetInit(),
          ],
        ),
      );
    });
  }
}
