import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class JaTemContaCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const JaTemContaCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Ainda não possui uma conta?" : "Já possui uma conta ? ",
          style: TextStyle(
            color: corPrimaria,
          ),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login  ? "Registe-se" : "Faça o login",
            style: TextStyle(
              color: corPrimaria,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

