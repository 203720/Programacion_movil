import 'package:flutter/material.dart';

class ContentBoarding extends StatelessWidget {
  const ContentBoarding(
      {super.key,
      this.text,
      this.descripcion,
      this.image,
      required Padding child});
  final String? text, descripcion, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                image!,
                width: 300,
                height: 300,
              ),
            ],
          ),
          Text(
            text!,
            style: const TextStyle(
              color: Colors.purple,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              descripcion!,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
