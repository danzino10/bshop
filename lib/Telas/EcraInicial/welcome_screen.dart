import 'package:flutter/material.dart';
import 'corpo.dart';

class WelcomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Corpo()),);
  }

}