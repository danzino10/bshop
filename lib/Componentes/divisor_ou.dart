import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class DivisorOu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      width: tamanho.width * 0.8,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: corPrimaria,
              height: 1.5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Text("OU", style: TextStyle(color: corPrimaria, fontWeight: FontWeight.w600),),
          ),

          Expanded(
            child: Divider(
              color: corPrimaria,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}

