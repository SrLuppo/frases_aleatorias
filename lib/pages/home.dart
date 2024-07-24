import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _message = "Clique abaixo para gerar uma frase";

  List<String>  messages = [
    "Bom dia",
    "Seja Bem-Vindo",
    "Hoje vamos rodar um App",
    "Você vai aprender Flutter"    
  ]; 

  void _generationText(){

    int i = Random().nextInt(messages.length);

    setState(() {
      this._message = messages[i];
    });    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Frases Aleatórias"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),  
        child: Column(
        children: [
        Image.asset(
          "images/construction.png",
          fit: BoxFit.fill,
          scale: 1.5,
        ),
        Padding(
          padding: EdgeInsets.only(top: 40),
          child: Text(
            _message,
            style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic
            ),
            ),
        ),
        Padding(padding: EdgeInsets.only(top: 40),
          child: ElevatedButton(
          onPressed: () => _generationText(), 
          child: const Text(
            "Nova Frase",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
        )
      ],),
      ) ,
      )   
    );
  }
}