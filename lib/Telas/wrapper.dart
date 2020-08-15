import 'package:bshop/Modelos/User.dart';
import 'package:bshop/Telas/EcraInicial/welcome_screen.dart';
import 'package:bshop/Telas/Home/home_ecra.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    // Retorna ou a página HOME ou a Página WELCOME
    if(user == null){
        return WelcomeScreen();
    }else{
      return Home();
    }
  }
  
}