import 'package:flutter/material.dart';

class View04 extends StatelessWidget {
  const View04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const[
              Text(
                    "A",
                    style: TextStyle(fontSize: 40, color: Colors.blue),
                  ),
              Text(
                    "B",
                    style: TextStyle(fontSize: 40, color: Colors.blue),
                  ),
            ],),
        ],
      ),
    );
  }
}