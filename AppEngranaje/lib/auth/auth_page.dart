import 'package:flutter/material.dart';
import 'package:flutter_module_1/pages/login_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  //Mostrar de loginpage
  bool showLoginPage = true;


  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: showRegisterPage);
    } else {
      return RegisterPage();
    }
  }
}