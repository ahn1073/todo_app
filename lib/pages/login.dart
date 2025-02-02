import 'package:flutter/material.dart';
import '/widget/images.dart';
import '/widget/form.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();

  @override
  void initState() {
    // 클래스 최초 호출시 여기서 호출된다.
    super.initState();

    // 이메일 포커스 상태 변경 감지
    emailFocusNode.addListener(() {
      setState(() {}); // 포커스 상태 변경시 화면 갱신
    });

    // 비밀번호 포커스 상태 변경 감지
    passwordFocusNode.addListener(() {
      setState(() {}); // 포커스 상태 변경시 화면 갱신
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              image(),
              SizedBox(height: 10),
              input('E-Mail', Icons.email, emailController, emailFocusNode),
              SizedBox(height: 10),
              input('Password', Icons.password, passwordController,
                  passwordFocusNode),
              SizedBox(height: 10),
              account(),
              SizedBox(height: 10),
              loginButton(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
