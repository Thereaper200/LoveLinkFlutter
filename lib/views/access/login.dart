import 'package:flutter/material.dart';
import '../components/lovetextfield.dart';
import '../components/lovebutton.dart';
import '../mainpages/mainmenu.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void makeLogin() {
    if(userController.text.isEmpty){
      print("Es necesario escribir un correo");
    return;
    }
    if(passwordController.text.isEmpty){
      print("Es necesario una contraseña");
    return;
    }
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const LoveMenu())
    );
  }

  double getTextFieldSize() {
    return MediaQuery.of(context).size.width*0.75;
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Container(color: Colors.white,),
              Column(
                children: [
                  SizedBox(width: double.infinity,),
                  const Spacer(),
                  Image.asset("assets/images/logo.jpeg", height: 200,),
                  const Spacer(),
                  LoveTextField(
                    Wsize: getTextFieldSize(),
                    ObscuredText: false,
                    PlaceHolder: 'Nombre',
                    Icono: Icon(Icons.email),
                    controller: userController,
                  ),
                  const SizedBox(height: 15,),
                  LoveTextField(
                    PlaceHolder: "Contraseña",
                    ObscuredText: true,
                    Wsize: getTextFieldSize(),
                    Icono: Icon(Icons.lock),
                    controller: passwordController,
                  ),
                  const Spacer(flex: 2),
                  GestureDetector(
                    onTap: makeLogin,
                    child: LoveButton(texto: "Iniciar Sesión",
                        Wsize: getTextFieldSize()
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text("Registrate", style: TextStyle(fontSize: 20),),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
