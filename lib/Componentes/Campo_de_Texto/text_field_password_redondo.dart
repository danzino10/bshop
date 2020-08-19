import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Campo_de_Texto/text_field_container.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class TextFieldPasswordRedondo extends StatelessWidget {
  final ValueChanged<String> onChange;
  final Function validador;

  const TextFieldPasswordRedondo({
    Key key,
    this.onChange,
    this.validador,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: validador,
        obscureText: true,
        onChanged: onChange,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: corPrimaria,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: corPrimaria,

          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

