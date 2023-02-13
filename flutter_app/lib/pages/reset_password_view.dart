import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_view.dart';

class ResetPasswordView extends StatefulWidget {
  const ResetPasswordView({super.key});

  @override
  State<ResetPasswordView> createState() => _ResetPasswoState();
}

class _ResetPasswoState extends State<ResetPasswordView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 25, 125),
        title: Row(
          children: [
            const Text(
              "Recuperar contraseña",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Image.asset(
                'assets/images/A3.png',
                scale: 5.3,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Center(
                      child: Text(
                        "Ingresa tu email para restablecer tu contraseña",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(158, 68, 68, 68),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              //Formulario
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 60),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Correo electrónico',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: ("Dirección de correo"),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "Ingrese su correo electrónico registrado y le eviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(158, 68, 68, 68),
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),

              //Iniciar sesión
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 360),
                        child: SizedBox(
                          height: 60,
                          width: 370,
                          child: MaterialButton(
                            onPressed: () => {},
                            color: const Color.fromARGB(255, 117, 167, 875),
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 117, 167, 875),
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Text(
                                  "Enviar solicitud",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
