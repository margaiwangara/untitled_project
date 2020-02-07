import 'package:flutter/material.dart';

Form authForm(GlobalKey<FormState> key, String buttonText, bool signUp) {
  return Form(
    key: key,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[],
    ),
  );
}

TextFormField authFormField(TextInputType inputType) {
  return TextFormField(
    keyboardType: inputType,
    decoration: InputDecoration(
      border: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey[400],
          width: 1.0,
          style: BorderStyle.solid,
        ),
      ),
    ),
  );
}
