import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, 
    this.hintText,this.onChange,this.obscureText=false,this.textInputType
  });
  String? hintText;
  bool? obscureText;
  Function(String)? onChange;
  TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
     keyboardType:textInputType ,
      onChanged: onChange,
      obscureText: obscureText!,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
        ),
        //general case for the border
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(),
          
        ),
        //enabled border and the case we see
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}