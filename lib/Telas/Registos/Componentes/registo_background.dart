import 'package:flutter/material.dart';

class BackgroungRegistos extends StatelessWidget {
  final Widget child;
  const BackgroungRegistos({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      height: tamanho.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/imagens/signup_top.png",
              width: tamanho.width * 0.3,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/imagens/main_bottom.png",
              width: tamanho.width * 0.15,
            ),
          ),
          child,
        ],
      ),
    );
  }
}