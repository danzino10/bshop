import 'package:flutter/material.dart';
import '../constantes.dart';

class Produto{

  final String titulo, preco, complemento, vendedor, imagemSrc;

  String get ImagemSrc{
    return imagemSrc;
  }
  String get Titulo{
    return Titulo;
  }
  String get Preco{
    return preco;
  }
  String get Vendedor{
    return vendedor;
  }
  String get Complemento{
    return complemento;
  }
  const Produto(
    this.imagemSrc, this.vendedor, this.preco, this.titulo, this.complemento,
  );




  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5
      ),
      decoration: BoxDecoration(
        color: corSecundaria,
        borderRadius: BorderRadius.circular(30),

      ),
      child: SizedBox(
        height: tamanho.height * 0.2,
        width: tamanho.width * 0.75,
        child: Row(
          children: <Widget>[
            Container(
              height: 130,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImagemSrc),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
            ),
            SizedBox(
              width: tamanho.width*0.1,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  Titulo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: corPrimaria,
                    fontSize: 17,
                  ),
                ),
                Text(
                  Preco,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                Text(
                  Complemento,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
                Text(
                  Vendedor,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
