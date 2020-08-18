import 'package:bshop/Componentes/barra_de_busca_home.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/Home/Componentes/home_corpo.dart';
import 'package:bshop/Telas/Produtos/lista_produtos.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
 _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {

  final ServicoAuth _auth = ServicoAuth();
  final paginas = [
    ProdutosCorpo(),
    HomeCorpo(),
    Text("Conta"),
    Text("Carrinho"),
    Text("Mensagens"),
  ];
  int paginaEscolhida = 0;
  Icon iconeBusca = Icon(Icons.search);
  Widget barraBusca = Text("BandaShop", style: TextStyle(color: corSecundaria, fontWeight: FontWeight.bold,));
  String itemBusca;



  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(
              Icons.announcement,
              color: corSecundaria,
            ),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                setState(() {
                  if(this.iconeBusca.icon == Icons.search){
                    this.iconeBusca = Icon(Icons.cancel);
                    this.barraBusca = BarraDeBuscaHome(
                      hint: "Procurar artigos",
                      onChanged: (value){setState(() => itemBusca = value);},
                    );
                  }
                  else{
                    this.iconeBusca = Icon(Icons.search);
                    this.barraBusca = Text("BandaShop", style: TextStyle(color: corSecundaria, fontWeight: FontWeight.bold,));
                  }
                });
              },
              icon: iconeBusca,
              color: corSecundaria,
            ),
          ],
          title: Column(
              children: <Widget>[
                SizedBox(height: tamanho.height * 0.5,),
                barraBusca,
                SizedBox(height: tamanho.height * 0.5,),
              ],
          ),
        ),
        body: paginas[paginaEscolhida],
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black54,
            selectedItemColor: corPrimaria,
            currentIndex: paginaEscolhida,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Início"),
                backgroundColor: corSecundaria,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet),
                  title: Text("Carteira"),
                  backgroundColor: corSecundaria,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text("Conta"),
                  backgroundColor: corSecundaria,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  title: Text("Carrinho"),
                backgroundColor: corSecundaria,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  title: Text("Mensagens"),
                backgroundColor: corSecundaria,
              ),
            ],
            onTap: (int index){
              setState(() => paginaEscolhida = index);
            },
        ),
      ),

    );
  }
  
}

