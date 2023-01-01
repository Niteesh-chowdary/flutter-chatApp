import 'package:flutter/material.dart';

import '../utils/textfield_styles.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinText;
  final FormFieldValidator<String>? validator;
  final bool hasAsterisk;
  const LoginTextField({Key? key,required this.controller,required this.hinText, this.validator,this.hasAsterisk=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if(validator!=null){
          return validator!(value);
        }
      },
      obscureText: hasAsterisk,
      controller: controller,
      decoration: InputDecoration(
          hintText: hinText,
          hintStyle: ThemeTextStyle.loginTextFieldStyle,
          border: OutlineInputBorder()),
    );
  }
}
