
import 'package:bshop/Componentes/Botoes/botao_curvo.dart';
import 'package:bshop/Componentes/Botoes/botao_rede_social.dart';
import 'package:bshop/Componentes/Produto/dados_produtos.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/Home/Componentes/home_background.dart';
import 'package:bshop/Telas/wrapper.dart';
import 'package:bshop/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCorpo extends StatefulWidget{

  @override
  _HomeCorpoState createState() => _HomeCorpoState();
}

class _HomeCorpoState extends State<HomeCorpo> with SingleTickerProviderStateMixin{
  final ServicoAuth _auth = ServicoAuth();
  int i = 0;
  PageController pageController;
  TabController tabController;
  List<String> img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIIj1ev5nibZoAfIWKAFh-KsYaetQaME1kpQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRVWkQ92zEJthGZdk7JFLWEmKHuMaQZkoD17g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQN3QrGSipkwsFLnVTd6ZVSkrOx6GAB-Rw2vQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRuSzBhoH5p0K-mk7UWDXeJsKDEb7bfaUCVgA&usqp=CAU'
  ];


  @override
  void initState() {
    pageController = new PageController(initialPage: 1, viewportFraction: 0.8);
    tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;

    return HomeBackground(
      child: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: <Widget>[
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
              SizedBox(height: tamanho.height * 0.050,),
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
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5
                ),
                width: tamanho.width *0.95,
                height: tamanho.height * 0.65,
                child: StreamBuilder(
                  stream: Firestore.instance.collection('Produto').snapshots(),
                  builder: (context, snapshot) {
                    return GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(produto.length, (index) {
                        return new Card(
                          child: new Container(
                            child: Column(
                              children: <Widget>[
                                SizedBox(child: Image.asset(snapshot.data.documents[1]['imagemSrc']), height: tamanho.height*0.1, width: tamanho.width,),
                                Text(
                                  snapshot.data.documents[1]['titulo'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: corPrimaria,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  snapshot.data.documents[1]['preço'],
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(snapshot.data.documents[1]['vendedor']),
                                Text(snapshot.data.documents[1]['categoria']),
                              ],
                            ),
                          ),
                        );
                      })
                    );
                  }
                ),
              ),
              BotaoCurvo(
                texto: "LOG OUT",
                press: () async {
                  await _auth.SignOut();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Wrapper();
                      },
                    ),
                  );
                },
                corTexto: Colors.white,
              ),
            ],
          ),
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
  Widget cartao(Icon icone, iconTexto){
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

  // StreamBuilder BuscarProdutos(String titulo, preco, comp, vend, src) {
  //   return StreamBuilder(
  //     stream: Firestore.instance.collection('Produto').snapshots(),
  //     builder: (context, snapshot) {
  //       if (!snapshot.hasData) return Text('Carregando os dados... Porfavor aguarde');
  //       return ;
  //     },
  //   );
  // }


}






