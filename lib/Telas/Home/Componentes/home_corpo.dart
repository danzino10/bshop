
import 'package:bshop/Componentes/botao_rede_social.dart';
import 'package:bshop/Componentes/produto.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/Home/Componentes/home_background.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCorpo extends StatefulWidget{
  @override
  _HomeCorpoState createState() => _HomeCorpoState();
}

class _HomeCorpoState extends State<HomeCorpo> {
  final ServicoAuth _auth = ServicoAuth();
  PageController pageController;
  List<String> img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIIj1ev5nibZoAfIWKAFh-KsYaetQaME1kpQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVWkQ92zEJthGZdk7JFLWEmKHuMaQZkoD17g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQN3QrGSipkwsFLnVTd6ZVSkrOx6GAB-Rw2vQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRuSzBhoH5p0K-mk7UWDXeJsKDEb7bfaUCVgA&usqp=CAU'
  ];

  List<Produto> produtos = [
    Produto('assets/imagens/produtos/produto-alcool-gel-caseiro.jpg', "Químicos Lda", "2.150,00 Kz", "Álcool gel", "Saúde e Beleza"),
    Produto('assets/imagens/produtos/produto-alcool-gel-industrial.jpg',"Mecofarma","2.730,00 Kz","Álcool gel","Saúde e Beleza"),
    Produto('assets/imagens/produtos/produto-iphone.jpg',"Danilo Carvalho","470.000,00 Kz","Iphone X","Informática e Tecnologia"),
    Produto('assets/imagens/produtos/produto-hp.jpg',"NCR Angola","1.270.350,00 Kz","HP EliteBook 840","Informática e Tecnologia"),
    Produto('assets/imagens/produtos/produto-mascaras.jpg',"Alfaiates Lda","450,00 Kz","Álcool gel","Acessórios de Roupa"),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    
    
    return HomeBackground(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: tamanho.height * 0.02,),
            Text(
              "Categorias:",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: corPrimaria,
                fontSize: 15,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/estrela.svg",
                        press: (){},
                      ),
                      Text(
                        "Favoritos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/vestido_mulher.svg",
                        press: (){},
                      ),
                      Text(
                        "Moda Feminina",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/camisa_homem.svg",
                        press: (){},
                      ),
                      Text(
                        "Moda Masculina",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/comida.svg",
                        press: (){},
                      ),
                      Text(
                        "Mercado Alimentar",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/desporto.svg",
                        press: (){},
                      ),
                      Text(
                        "Desporto e Lazer",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/eventos.svg",
                        press: (){},
                      ),
                      Text(
                        "Casamentos e Eventos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/relogio.svg",
                        press: (){},
                      ),
                      Text(
                        "Jóias e Relógios",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/computador.svg",
                        press: (){},
                      ),
                      Text(
                        "Informática e Tecnologia",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/electrodomesticos.svg",
                        press: (){},
                      ),
                      Text(
                        "Electrodomésticos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/jardim.svg",
                        press: (){},
                      ),
                      Text(
                        "Casa e Jardins",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/brinquedo.svg",
                        press: (){},
                      ),
                      Text(
                        "Brinquedos e Passatempos",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/cosmeticos.svg",
                        press: (){},
                      ),
                      Text(
                        "Saúde e Beleza",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/carrinho.svg",
                        press: (){},
                      ),
                      Text(
                        "Mamã e Bebê",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/escola.svg",
                        press: (){},
                      ),
                      Text(
                        "Escolar e Escritório",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/martelo.svg",
                        press: (){},
                      ),
                      Text(
                        "Material de Construção",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/eletricista.svg",
                        press: (){},
                      ),
                      Text(
                        "Eletrónica e Energia",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/carro.svg",
                        press: (){},
                      ),
                      Text(
                        "Automóveis e Peças",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/animal.svg",
                        press: (){},
                      ),
                      Text(
                        "Animais e Petshop",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      BotaoRedeSocial(
                        iconeSrc: "assets/icones/trabalhador.svg",
                        press: (){},
                      ),
                      Text(
                        "Prestação de Serviços",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: corPrimaria,
                          fontSize: 8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5
                    ),
                    width: tamanho.width *0.95,
                    height: tamanho.height * 0.25,
                    child: GridView.count(
                      crossAxisCount: 3,
                      children: <Widget>[
                        cartao(Icon(Icons.watch_later),"Relogio"),
                        cartao(Icon(Icons.history),'Histórico'),
                        cartao(Icon(Icons.account_balance),'Conta'),
                        cartao(Icon(Icons.account_balance_wallet),'Carteira'),
                        cartao(Icon(Icons.playlist_add_check),'Estatística'),
                        cartao(Icon(Icons.assignment),'Relatório'),
                        cartao(Icon(Icons.library_music),'Música'),
                        cartao(Icon(Icons.settings),'Definições'),

                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5
                    ),
                    width: tamanho.width *0.95,
                    height: tamanho.height * 0.35,
                    decoration: BoxDecoration(
                      color: corSecundaria,
                      borderRadius: BorderRadius.circular(29),
                    ),
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: img.length,
                        itemBuilder: (context,position){
                          return imageSlider(position);
                        }),
                  ),
                  SizedBox(height: tamanho.height * 0.02,),
                  Column(
                    children: [
                      new ListView.builder(
                        itemCount: produtos.length,
                        itemBuilder: (BuildContext context,int index) => CartaoProdutos(context, index)
                      ),
                    ],
                  ),
                ],
            ),
          ],
        ),
      ),
    );
  }

  imageSlider(int index){
    return AnimatedBuilder(
      animation: pageController,
      builder: (context,widget){
        double value = 1;
        if(pageController.position.haveDimensions){
          value = pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            width: Curves.easeInOut.transform(value) * 300,
            height: Curves.easeInOut.transform(value) * 175,
            child: widget,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        child: Image.network(img[index], fit: BoxFit.cover,),
      ),
    );
  }
  cartao(Icon icone, iconTexto){
    return Card(
      child: InkWell(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            icone,
            Text(
              iconTexto,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CartaoProdutos (BuildContext context, int index){
    final produto = produtos[index];
    return new Container(
      child: Card(
        child: Column(
          children: [
            Text(produto.titulo),
            Text(produto.preco),
            Text(produto.vendedor),
            Text(produto.complemento),
            Text(produto.imagemSrc),
          ],
        ),
      ),
    );
  }
}




