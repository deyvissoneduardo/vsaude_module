import 'package:flutter/material.dart';
import 'package:vsaude_app/page/register_user/widgets/form_register_widget/form_register_widget.dart';

class CardWidgetResgister extends StatelessWidget {
  const CardWidgetResgister({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(2.5),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: FormRegisterWidget(),
              ),
            ),
          ),
        ],
      );
    });
  }
}
