import 'package:flutter/material.dart';

class View02 extends StatelessWidget {
  const View02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Column(
          children: [
            const Padding(
              padding:EdgeInsets.only(top: 40.0,bottom:40
              ),
            child: Text("Nombre completo"),
            ),
          Column(
            children: const[
              Text("Azul"),
              Text("Gissele"),
              Text("Briones"),
              Text("Zavala"),
            ],),
          ],  
        ),
      ),
      );
  }
}