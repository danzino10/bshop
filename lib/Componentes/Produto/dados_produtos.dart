
import 'package:bshop/Componentes/Produto/produto.dart';

var produto = [
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-alcool-gel-caseiro.jpg',
    complemento: "Saúde e Beleza",
    vendedor: "Químicos Lda",
    preco: "2.150,00 Kz",
    titulo: "Álcool gel",
  ),
   Produto(
    imagemSrc: 'assets/imagens/produtos/produto-alcool-gel-industrial.jpg',
    complemento: "Saúde e Beleza",
    vendedor: "Mecofarma",
    preco: "2.730,00 Kz",
    titulo: "Álcool gel",
  ),
   Produto(
    imagemSrc: 'assets/imagens/produtos/produto-iphone.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "Danilo Carvalho",
    preco: "470.000,00 Kz",
    titulo: "Iphone X",
  ),
   Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
  Produto(
    imagemSrc: 'assets/imagens/produtos/produto-hp.jpg',
    complemento: "Informática e Tecnologia",
    vendedor: "NCR Angola",
    preco: "1.270.350,00 Kz",
    titulo: "HP EliteBook 840",
  ),
];


// StreamBuilder BuscarProdutos(String titulo, preco, comp, vend, src) {
//   return StreamBuilder(
//     stream: Firestore.instance.collection('Produto').snapshots(),
//     builder: (context, snapshot) {
//       if (!snapshot.hasData) return Text('Carregando os dados... Porfavor aguarde');
//       return ;
//     },
//   );
// }