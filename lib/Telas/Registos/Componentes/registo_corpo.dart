import 'package:bshop/Componentes/Botoes/botao_rede_social.dart';
import 'package:bshop/Componentes/Campo_de_Texto/text_field_password_redondo.dart';
import 'package:bshop/Componentes/Campo_de_Texto/text_field_redondo_normal.dart';
import 'file:///W:/AndroidStudio/ECommerce/bshop/lib/Componentes/Botoes/botao_curvo.dart';
import 'package:bshop/Componentes/divisor_ou.dart';
import 'package:bshop/Componentes/ja_tem_conta.dart';
import 'package:bshop/Servicos/auth.dart';
import 'package:bshop/Telas/Home/home_ecra.dart';
import 'package:bshop/Telas/Login/login_ecra.dart';
import 'package:bshop/Telas/Registos/Componentes/registo_background.dart';
import 'package:bshop/constantes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CorpoRegistos extends StatefulWidget{

  const CorpoRegistos({
    Key key,
  }) : super(key: key);

  @override
  _CorpoRegistosState createState() => _CorpoRegistosState();
}

class _CorpoRegistosState extends State<CorpoRegistos> {

  final ServicoAuth _auth = ServicoAuth();
  final _formkey = GlobalKey<FormState>();

  String email;
  String pnome;
  String unome;
  String pass;
  String idade;
  String telefone;
  String erro = "";

  @override
  Widget build(BuildContext context) {
    Size tamanho = MediaQuery.of(context).size;
    return BackgroungRegistos(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Registo",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: corPrimaria,
                  fontSize: 34,
                ),
              ),
              SvgPicture.asset("assets/icones/signup.svg",
                height: tamanho.height * 0.35,
              ),
              Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    TextFieldRedondo(
                      validador: (value) => value.isEmpty ? "Digite o Primeiro nome" : null,
                      hint: "Primeiro nome",
                      onChanged: (value){ setState(() => pnome = value);},
                      tipoText: TextInputType.text,
                      icone: Icon(Icons.person, color: corPrimaria,),
                    ),
                    TextFieldRedondo(
                      validador: (value) => value.isEmpty ? "Digite o Último nome" : null,
                      hint: "Último nome",
                      onChanged: (value){ setState(() => unome = value);},
                      tipoText: TextInputType.text,
                      icone: Icon(Icons.person, color: corPrimaria,),
                    ),

                    TextFieldRedondo(
                      validador: (value) => value.isEmpty ? "Digite o Email" : (isEmail(value) ? null : "Email inválido"),
                      hint: "Email",
                      onChanged: (value){ setState(() => email = value);},
                      tipoText: TextInputType.emailAddress,
                      icone: Icon(Icons.email, color: corPrimaria,),
                    ),
                    TextFieldRedondo(
                      validador: (value) => value.isEmpty ? "Digite o número de telefone" : (value.length < 9 ? "Número de Telefone inválido" : null),
                      max: 9,
                      hint: "Telefone",
                      onChanged: (value){ setState(() => telefone = value);},
                      tipoText: TextInputType.phone,
                      icone: Icon(Icons.phone, color: corPrimaria,),
                    ),
                    TextFieldRedondo(
                      validador: (value) => value.isEmpty ? "Digite a idade" : null,
                      max: 2,
                      hint: "Idade",
                      onChanged: (value){ setState(() => idade = value);},
                      tipoText: TextInputType.number,
                      icone: Icon(Icons.calendar_today, color: corPrimaria,),
                    ),
                    TextFieldPasswordRedondo(
                      validador: (value) => value.isEmpty ? "Digite a password" : (value.length < 6 ? "Password muito curta" : null),
                      onChange: (value) { setState(() => pass = value);},

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
                      texto: "REGISTAR",
                      press: () async {
                        if(_formkey.currentState.validate()){
                          dynamic result = await _auth.RegistarComEmailPassword(email, pass);
                          if(result == null){
                            setState(() => erro = "Erro no Registo de novo usuário");
                          }
                          else{
                            Firestore.instance.collection("Cliente").document().setData({
                              "Primeiro nome" : pnome,
                              "Último nome" : unome,
                              "Email" : email,
                              "Telefone" : telefone,
                              "Idade" : idade,
                            });
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
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return LoginScreen();
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

