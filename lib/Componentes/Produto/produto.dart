


class Produto{

  String titulo, preco, complemento, vendedor, imagemSrc;

  Produto(
  {this.imagemSrc, this.vendedor, this.preco, this.titulo, this.complemento,}
  );

  void set Imagem (String img){
    imagemSrc = img;
  }

  String get Imagem {
    return imagemSrc;
  }

  void set Titulo (String title){
    titulo = title;
  }

  String get Titulo {
    return titulo;
  }

  void set Preco (String price){
    preco = price;
  }

  String get Preco {
    return preco;
  }

  void set Vendedor (String vendor){
    vendedor = vendor;
  }

  String get Vendedor {
    return vendedor;
  }

  void set Complemento (String comp){
    complemento = comp;
  }

  String get Complemento {
    return complemento;
  }

}
