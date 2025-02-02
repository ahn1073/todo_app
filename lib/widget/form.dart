import 'package:flutter/material.dart';
import '../consts/consts.dart';

Padding loginButton() {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: focusedColor, borderRadius: BorderRadius.circular(10)),
      child: Text(
        'LogIn',
        style: TextStyle(
            color: Colors.white,
            fontSize: fsWidget,
            fontWeight: FontWeight.bold),
      ),
    ),
  );
}

Padding account() {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'Don\'t have an account?',
          style: TextStyle(fontSize: fsText, color: Colors.grey[700]),
        ),
        SizedBox(width: 5),
        Text(
          'Sign Up',
          style: TextStyle(
              fontSize: fsText,
              color: Colors.blue,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Padding input(String typeName, IconData icon, TextEditingController controller,
    FocusNode focusNode) {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Container(
      decoration: BoxDecoration(color: Colors.white),
      child: TextField(
        controller: controller, // connect controller
        focusNode: focusNode, // connect focus
        style: TextStyle(fontSize: fsInputField, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: focusNode.hasFocus ? focusedColor : borderColor,
          ),
          contentPadding: paddingSameWidget_HorVer,
          hintText: typeName,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: borderColor, width: borderWidth),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: focusedColor, width: borderWidth),
          ),
        ),
      ),
    ),
  );
}
