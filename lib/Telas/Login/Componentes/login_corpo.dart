import 'package:bshop/Componentes/botao_curvo.dart';
import 'package:bshop/Componentes/botao_rede_social.dart';
import 'package:bshop/Componentes/divisor_ou.dart';
import 'package:bshop/Componentes/ja_tem_conta.dart';
import 'package:bshop/Componentes/text_field_password_redondo.dart';
import 'package:bshop/Componentes/text_field_redondo_email.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/Home/home_ecra.dart';
import 'package:bshop/Telas/Login/Componentes/login_background.dart';
import 'package:bshop/Telas/Registos/registos_ecra.dart';
import 'package:bshop/constantes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CorpoLogin extends StatefulWidget {

  const CorpoLogin({
    Key key,
  }) : super(key: key);

  @override
  _CorpoLoginState createState() => _CorpoLoginState();
}

class _CorpoLoginState extends State<CorpoLogin> {

  final ServicoAuth _auth = ServicoAuth();
  final _formkey = GlobalKey<FormState>();

  String email = "";
  String erro = "";
  String pass = "";

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34, color: corPrimaria),
              ),
              SvgPicture.asset("assets/icones/login.svg",
                height: tamanho.height * 0.35,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    TextFieldRedondoEmail(
                      validador: (value) => value.isEmpty ? "Digite o Email" : (isEmail(value) ? null : "Email inválido"),
                      hint: "Email",
                      onChanged: (value){
                        setState(() {
                          email = value;
                        });
                      },
                    ),
                    TextFieldPasswordRedondo(
                      validador: (value) => value.isEmpty ? "Digite a password" : null,
                      onChange: (value) {
                        setState(() {
                          pass = value;
                        });
                      },
                    ),
                    Text(
                      erro,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: tamanho.height * 0.050,),
                    BotaoCurvo(
                      texto: "ENTRAR",
                      press: () async {
                        if(_formkey.currentState.validate()){
                          dynamic result = await _auth.EntrarComEmailPassword(email, pass);

                          if(result == null){
                            setState(() => erro = "Não foi possivel entrar com estas credenciais");
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
                        }
                      },
                      corTexto: Colors.white,
                    ),
                  ],
                ),
              ),
              JaTemContaCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return RegistosEcra();
                        },
                    ),
                  );},
              ),
              DivisorOu(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  BotaoRedeSocial(
                    iconeSrc: "assets/icones/facebook.svg",
                    press: (){},
                  ),
                  BotaoRedeSocial(
                    iconeSrc: "assets/icones/google-plus.svg",
                    press: (){},
                  ),
                  BotaoRedeSocial(
                    iconeSrc: "assets/icones/twitter.svg",
                    press: (){},
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }

  bool isEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (regex.hasMatch(value))
      return true;
    else
      return false;
  }
}

