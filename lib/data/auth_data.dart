import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

abstract class AuthenticationDataSource {
  Future<void> register(String email, String password,
      String passwordConfirm); // email, pass, passconfirm
  Future<void> login(String email, String password);
}

class AuthenticationRemote extends AuthenticationDataSource {
  @override
  Future<void> login(String email, String password) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email.trim(), password: password.trim());
  }

  Future<void> register(
      @override String email, String password, String passwordConfirm) async {
    bool isValidEmail =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
            .hasMatch(email);

    bool isValidPassword = RegExp(
            r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{6,}$')
        .hasMatch(password);

    if (!isValidEmail) {
      Fluttertoast.showToast(msg: 'Invalid E-mail address', fontSize: 16.0);
      return;
    }

    if (!isValidPassword) {
      Fluttertoast.showToast(
          msg:
              'Password must be at least 6 characters long, contain at least one number, one special character, and one uppercase letter.',
          fontSize: 16.0);
      return;
    }

    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      Fluttertoast.showToast(msg: 'Registration failed: ${e.toString()}');
    }
  }
}
