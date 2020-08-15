import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class BotaoCurvo extends StatelessWidget {
  final String texto;
  final Function press;
  final Color cor, corTexto;
  const BotaoCurvo({
    Key key, this.texto, this.press, this.cor = corPrimaria, this.corTexto = Colors.white,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: tamanho.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: cor,
          onPressed: press,
          child: Text(texto, style: TextStyle(color: corTexto),
          ),
        ),
      ),
    );
  }
}