import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Barra_de_busca/barra_de_busca_container.dart';
import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Campo_de_Texto/text_field_container.dart';
import 'package:flutter/material.dart';

class BarraDeBuscaHome extends StatelessWidget {
  final String hint;
  final ValueChanged<String> onChanged;
  final Icon icone;
  final TextInputType tipoText;

  const BarraDeBuscaHome({
    Key key,
    this.hint,
    this.onChanged,
    this.icone,
    this.tipoText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarraDeBuscaContainer(
      child: TextField(
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
