import 'package:bshop/Componentes/produto.dart';
import 'package:bshop/Telas/Home/Componentes/home_background.dart';
import 'package:flutter/material.dart';

class ProdutosCorpo extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _ProdutosCorpoState();

}

class _ProdutosCorpoState extends State<ProdutosCorpo>{

  List<Produto> produtos = [
//    Produto('assets/imagens/produtos/produto-alcool-gel-caseiro.jpg', "Químicos Lda", "2.150,00 Kz", "Álcool gel", "Saúde e Beleza"),
//    Produto('assets/imagens/produtos/produto-alcool-gel-industrial.jpg',"Mecofarma","2.730,00 Kz","Álcool gel","Saúde e Beleza"),
//    Produto('assets/imagens/produtos/produto-iphone.jpg',"Danilo Carvalho","470.000,00 Kz","Iphone X","Informática e Tecnologia"),
//    Produto('assets/imagens/produtos/produto-hp.jpg',"NCR Angola","1.270.350,00 Kz","HP EliteBook 840","Informática e Tecnologia"),
//    Produto('assets/imagens/produtos/produto-mascaras.jpg',"Alfaiates Lda","450,00 Kz","Álcool gel","Acessórios de Roupa"),
//    Produto('assets/imagens/produtos/produto-alcool-gel-caseiro.jpg', "Químicos Lda", "2.150,00 Kz", "Álcool gel", "Saúde e Beleza"),
  ];



  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return HomeBackground(
      child: Container(
        child: ListView.builder(
            itemCount: produtos.length,
            itemBuilder: (BuildContext context,int index) => CartaoProdutosAqui(context, index)
        ),
      ),
    );
  }

  Widget CartaoProdutosAqui (BuildContext context, int index){
    Size tamanho = MediaQuery.of(context).size;
    final produto = produtos[index];
    return Container(
    );
  }
}



