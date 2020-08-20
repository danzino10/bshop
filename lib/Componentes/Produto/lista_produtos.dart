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
        child: new Row(
          children: [
            new Container(
              margin: EdgeInsets.all(8.0),
              child: new Image.asset(e.imagemSrc, width: 70.0, height: 70.0,),
            )
          ],
        ),
      );
      return container;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: construirProdutos(),
    );
  }
}



