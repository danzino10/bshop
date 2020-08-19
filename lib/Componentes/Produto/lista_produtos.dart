import 'package:bshop/Componentes/Produto/dados_produtos.dart';
import 'package:flutter/material.dart';

class ProdutosLista extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new _ProdutosListaState();

}

class _ProdutosListaState extends State<ProdutosLista>{
  List<Container> construirProdutos(){
    int index = 0;
    return produto.map((e) {
      var container = Container (

      );
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return new ListView(
      children: construirProdutos(),
    );
  }
}



