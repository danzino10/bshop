import 'package:bshop/Componentes/text_field_container.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class TextFieldRedondoEmail extends StatelessWidget {
  final String hint;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final Function validador;

  const TextFieldRedondoEmail({
    Key key,
    this.hint,
    this.icon = Icons.person,
    this.onChanged,
    this.validador,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        validator: validador,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          icon: Icon(
            icon,
            color :corPrimaria,
          ),
          border: InputBorder.none,
        ),
        keyboardType: TextInputType.emailAddress,
      ),

    );
  }
}

