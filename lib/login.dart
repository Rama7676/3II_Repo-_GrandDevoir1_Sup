
import 'package:flutter/material.dart';
import 'package:_9504022/home.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final controllerLogin = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Text("welcome to Login page"),
          TextField(
            controller: controllerLogin,
            decoration:InputDecoration(
              label:Text("LOGIN"),
              hintText:"veuillez entrer votre login svp",

            ),
          ),
          SizedBox(height:10),
          TextField(
            controller: controllerPassword,
            decoration:InputDecoration(
              label:Text("MOT DE PASSE"),
              hintText:"veuillez entrer votre mot de passe svp",
            ),
          ),
          SizedBox(height:10),
          ElevatedButton(onPressed:() {
            if((controllerLogin.text=="Togola" && controllerPassword.text=="@bdoul123")||
            (controllerLogin.text=="admin" && controllerPassword.text=="admin123") ||
            (controllerLogin.text=="user1" && controllerPassword.text=="user123")){
              Navigator.of(context).pushReplacement(
            MaterialPageRoute<void>(
                builder: (context) => HomePage(title: controllerLogin.text,),
              ),
            );
            }else{
              ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("login ou mot de passee incorrect")));
            }
            
          },child:Text("SE CONNECTER"))


        ],
      ),
    );
  }
}