import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldWidget extends StatelessWidget {
  Icon icon;
  TextEditingController controller;
  TextInputType inputType;
  final Function(String) validator;
  final Function(String) onSaved;
  final bool obscure;
  final String hint;
  final bool autofocus;
  final List<TextInputFormatter> inputFormatters;

  TextFormFieldWidget({
    Key key,
    this.icon,
    this.controller,
    this.inputType,
    @required this.validator,
    @required this.onSaved,
    this.obscure = false,
    this.hint,
    this.autofocus = false,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        this.icon,
        const SizedBox(
          width: 4,
        ),
        Container(
          child: Expanded(
              child: TextFormField(
            controller: this.controller,
            autofocus: this.autofocus,
            obscureText: this.obscure,
            keyboardType: this.inputType,
            inputFormatters: this.inputFormatters,
            onSaved: this.onSaved,
            validator: this.validator,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: this.hint,
                hintStyle: TextStyle(color: Colors.grey[600], fontSize: 15),
                contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
          )),
        )
      ],
    );
  }
}
