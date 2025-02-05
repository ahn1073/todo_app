import 'package:flutter/material.dart';
import '/data/auth_data.dart';
import '../consts/consts.dart';

// 아래를 반영하여 로그인 버튼 인자를 바꿀것것
Padding loginButton(email, password) {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: focusedColor, borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () async {
          // AuthenticationRemote의 인스턴스를 생성하고, 그 인스턴스에서 login 메서드 호출
          AuthenticationRemote authRemote = AuthenticationRemote();
          await authRemote.login(email, password); // async로 호출
        },
        child: Text(
          'LogIn',
          style: TextStyle(
              color: Colors.white,
              fontSize: fsWidget,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

// 아래를 반영하여 로그인 버튼 인자를 바꿀것것
Padding signupButton(email, password, passwordConfirm) {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: focusedColor, borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () async {
          await AuthenticationRemote()
              .register(email, password, passwordConfirm);
        },
        child: Text(
          'SignUp',
          style: TextStyle(
              color: Colors.white,
              fontSize: fsWidget,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}

Padding account(text1, text2, show) {
  return Padding(
    padding: paddingSameWidget_Hor,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text1,
          style: TextStyle(fontSize: fsText, color: Colors.grey[700]),
        ),
        SizedBox(width: 5),
        GestureDetector(
          onTap: show, // Sign Up 을 클릭했을때  show 함수를 호출출
          child: Text(
            text2,
            style: TextStyle(
                fontSize: fsText,
                color: Colors.blue,
                fontWeight: FontWeight.bold),
          ),
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
