import 'package:flutter/material.dart';

class BottonResetPasswordWidget extends StatelessWidget {
  VoidCallback onPressed;
  BottonResetPasswordWidget({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        alignment: Alignment.topRight,
        padding: EdgeInsets.only(right: 10),
        child: ElevatedButton(
          child: Text('Validar token'),
          onPressed: this.onPressed,
        ),
      );
    });
  }
}
