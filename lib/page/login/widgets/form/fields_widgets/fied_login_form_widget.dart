import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FieldLoginFormWidget extends StatelessWidget {
  final Icon icon;
  TextEditingController controller;
  TextInputType textInputType;
  final bool obscure;
  final String hintText;
  final bool autofocus;
  final List<TextInputFormatter> inputFormater;
  final Function(String) validator;
  final Function(String) onSaved;
  final Function(String) onChanged;

  FieldLoginFormWidget(
      {Key key,
      this.icon,
      this.obscure = false,
      this.hintText = '',
      this.autofocus = false,
      this.inputFormater,
      this.textInputType,
      this.controller,
      this.onChanged,
      @required this.validator,
      @required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 4,
        ),
        Container(
          child: Expanded(
              child: TextFormField(
            controller: this.controller,
            autofocus: this.autofocus,
            onChanged: this.onChanged,
            enableSuggestions: true,
            obscureText: this.obscure,
            keyboardType: this.textInputType,
            inputFormatters: this.inputFormater,
            onSaved: this.onSaved,
            validator: this.validator,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: this.hintText,
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
