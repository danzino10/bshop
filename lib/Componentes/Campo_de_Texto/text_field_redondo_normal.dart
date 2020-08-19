import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Campo_de_Texto/text_field_container.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class TextFieldRedondo extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final Icon icone;
  final TextInputType tipoText;
  final Function validador;
  final int max;

  const TextFieldRedondo({
    Key key,
    this.hint,
    this.onChanged,
    this.icone,
    this.tipoText,
    this.validador,
    this.max,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        maxLength: max,
        validator: validador,
        onChanged: onChanged,
        keyboardType: tipoText,
        decoration: InputDecoration(
          hintText: hint,
          border: InputBorder.none,
          icon: icone,
        ),
      ),
    );
  }
}

