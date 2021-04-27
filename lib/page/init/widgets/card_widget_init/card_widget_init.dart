import 'package:flutter/material.dart';
import 'package:vsaude_app/core/exports_app_core.dart';
import 'package:vsaude_app/page/init/widgets/icon_card_init_widget/icon_card_init_widget.dart';
import 'package:vsaude_app/page/init/widgets/subtitle_card_init_widget/subtitle_card_init_widget.dart';
import 'package:vsaude_app/page/init/widgets/title_card_init_widget/title_card_init_widget.dart';

class CardWidgetInit extends StatelessWidget {
  const CardWidgetInit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Container(
        height: 150,
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            height: 70,
            width: constrainsts.maxWidth,
            child: Column(
              children: [
                TitleCardInitWidget(),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconCardInitWidget(),
                    const SizedBox(width: 10),
                    SubtitleCardInitWidget()
                  ],
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
