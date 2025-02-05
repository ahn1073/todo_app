import 'package:flutter/material.dart';

import '../pages/login.dart';
import '../pages/signup.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  bool isLogin = true;

  void to() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  Widget build(BuildContext context) {
    if (isLogin == true) {
      // Login 페이지에서 어떤 페이지로 갈것인지 결정한다.
      return Login(to);
    } else {
      return Signup(to);
    }
  }
}
