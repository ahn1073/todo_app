import 'package:flutter/material.dart';
import '../consts/consts.dart';

Padding image() {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('images/login_header.png'))),
    ),
  );
}
