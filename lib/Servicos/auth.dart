import 'package:bshop/Modelos/User.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServicoAuth {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  //Criar usuario de acordo ao Firebase User
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null;
  }

  // stream de alterações na autenticaçao
  Stream<User> get user{
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }
  // entrar convidado
  Future SignInAnon()  async {
    try{
      AuthResult resultado = await _auth.signInAnonymously();
      FirebaseUser user = resultado.user;
      return user;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  //entrar com email
  Future EntrarComEmailPassword(String email, String pass) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
    }
  }


  //registar
  Future RegistarComEmailPassword(String email, String pass) async {
    try{
        AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: pass);
        FirebaseUser user = result.user;
        return _userFromFirebaseUser(user);
    }catch(e){
      print(e.toString());
      return null;
  }
  }

  //sair
  Future SignOut() async {
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }
}