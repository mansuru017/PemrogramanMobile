import 'package:flutter/material.dart';
import 'package:tugas_akhir/Login_Regis/login.dart';
import 'package:tugas_akhir/Login_Regis/regis.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? LoginScreen(onClickedSignUp: toggle)
      : RegisScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
