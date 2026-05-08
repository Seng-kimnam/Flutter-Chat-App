import 'package:flutter/material.dart';
import 'package:flutter_project/utils/text_field_style.dart';

class LoginTextField extends StatelessWidget {

  final TextEditingController inputTextFieldController ;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final bool hasHidden;

  const LoginTextField({super.key ,
    required this.inputTextFieldController ,
    required this.hintText ,
    this.validator,
    this.hasHidden = false
  });

  @override
  Widget build(BuildContext context) {

    return TextFormField(
      validator: (value) {
        if(value!=null && value.isNotEmpty && value.length < 5){
          return "Your username should be more than 5 char";
        }
        else if(value!=null &&value.isNotEmpty){
          return "Please type your password";
        }
        return null;
      },
      controller : inputTextFieldController,
      obscureText: hasHidden,
      decoration: InputDecoration(
          hintText: hintText,
          border : OutlineInputBorder(),
          hintStyle: ThemeTextStyle.loginTextField
      ),
    );
  }
}
