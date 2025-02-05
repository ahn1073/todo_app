import 'package:flutter/material.dart';
import '/widget/images.dart';
import '/widget/form.dart';

class Signup extends StatefulWidget {
  final VoidCallback show; // 이것을 사용한다.
  const Signup(this.show, {super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordConfirmController = TextEditingController();

  final FocusNode emailFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode passwordConfirmFocusNode = FocusNode();

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

    passwordConfirmFocusNode.addListener(() {
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
              input('Confirm Password', Icons.password,
                  passwordConfirmController, passwordConfirmFocusNode),
              SizedBox(height: 10),
              account('Have an account?', 'Login', widget.show),
              SizedBox(height: 10),
              signupButton(emailController.text, passwordController.text,
                  passwordConfirmController.text),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
