import 'package:flutter/material.dart';
import '../../constantes.dart';

class Produto{

  final String titulo, preco, complemento, vendedor, imagemSrc;

  const Produto(
  {this.imagemSrc, this.vendedor, this.preco, this.titulo, this.complemento,}
  );
}
