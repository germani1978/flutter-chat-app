// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfff2f2f2),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Logo( titulo: 'Messenger',),
                _Form(),
                Labels( 
                  ruta : 'register', 
                  titulo: 'No tienes cuenta', 
                  subtitulo: 'Crea una ahora!', 
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text('terminos y condiciones de uso!',style: TextStyle(fontWeight: FontWeight.w200),)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {

  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      padding: EdgeInsets.symmetric(horizontal: 50,),
      child: Column(
        children: [

         

          CustomInput(
            icon: Icons.mail_outline, 
            placeholder: 'Email', 
            keyboardType: TextInputType.emailAddress,
            textControler: emailCtrl,
           ),

          CustomInput(
            password: true,
            icon: Icons.lock_outline,
            placeholder: 'Password', 
            textControler: passCtrl,
           ),

         BotonAzul(
           text: 'Ingrese',
           onPressed: () {
             print(emailCtrl.text);
             print(emailCtrl.text);
           },
         ),

        ],
      ),
    );
  }
}


