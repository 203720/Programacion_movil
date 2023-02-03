import 'package:flutter/material.dart';

class View03 extends StatelessWidget {
  const View03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children:[
            const Center(
              child: Text(
                      "Hola",
                      style: TextStyle(fontSize: 40, color: Colors.red),
                    ),
            ),
            Column(
              children: const[
                Text(
                      "Azul",
                      style: TextStyle(fontSize: 40, color: Colors.blue),
                    ),
                    Text(
                      "Gissele",
                      style: TextStyle(fontSize: 40, color: Colors.blue),
                    ), 
                    Text(
                      "Briones",
                      style: TextStyle(fontSize: 40, color: Colors.blue),
                    ),
                    Text(
                      "Zavala",
                      style: TextStyle(fontSize: 40, color: Colors.blue),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }
}