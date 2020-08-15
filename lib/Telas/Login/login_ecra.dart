import 'package:bshop/Telas/Login/Componentes/login_corpo.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: CorpoLogin()),
    );
  }
  
}

