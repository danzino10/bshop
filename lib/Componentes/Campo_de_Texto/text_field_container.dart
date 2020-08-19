import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5
      ),
      width: tamanho.width * 0.8,
      decoration: BoxDecoration(
          color: corSecundaria,
          borderRadius: BorderRadius.circular(29),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(100, 40, 100, .3),
              blurRadius: 20,
              offset: Offset(0, 10),
            )
          ]),
      child: child,
    );
  }
}

