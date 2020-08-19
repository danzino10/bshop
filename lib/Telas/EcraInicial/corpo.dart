
import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Botoes/botao_curvo.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/EcraInicial/background.dart';
import 'package:bshop/Telas/Home/home_ecra.dart';
import 'package:bshop/Telas/Login/login_ecra.dart';
import 'package:bshop/Telas/Registos/registos_ecra.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Corpo extends StatelessWidget{
  final ServicoAuth _auth = ServicoAuth();
  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("BANDASHOP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34, color: corPrimaria),
            ),
            SizedBox(height: tamanho.height * 0.002,),
            Text("Bisno por um dedo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: corPrimaria),
            ),
            SizedBox(height: tamanho.height * 0.1,),
            SvgPicture.asset("assets/icones/chat.svg",
              height: tamanho.height * 0.35,
            ),
            SizedBox(height: tamanho.height * 0.03,),
            BotaoCurvo(
              texto: "LOGIN",
              press: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            BotaoCurvo(
              texto: "REGISTO",
              press: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context){
                    return RegistosEcra();
                  },
                ),
              );},
              cor: corSecundaria,
              corTexto: corPrimaria,
            ),
            BotaoCurvo(
              texto: "ENTRAR COMO CONVIDADO",
              press: () async {
                dynamic resultado = await _auth.SignInAnon();
                if(resultado == null){
                  print('Erro ao logar');
                }
                else{
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return Home();
                      },
                    ),
                  );
                }
              },
            ),
            SizedBox(height: tamanho.height * 0.06,),
            Text("DMD - Dynamic Developers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: corPrimaria),
            ),
            Text("Todos os direitos reservados",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 8, color: corPrimaria),
            ),
          ],
        ),
      ),
    );
  }
}



