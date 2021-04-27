import 'package:flutter/material.dart';

class CardWidgetInit extends StatelessWidget {
  const CardWidgetInit({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Container(
        height: MediaQuery.of(context).size.height / 2,
        color: Colors.orange,
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Container(
            height: 150,
            width: constrainsts.maxWidth,
            color: Colors.red,
          ),
        ),
      );
    });
  }
}
