import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BotaoRedeSocial extends StatelessWidget {
  final String iconeSrc;
  final Function press;
  const BotaoRedeSocial({
    Key key,
    this.iconeSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: corPrimaria,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(iconeSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

