import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Register_view.dart';
import 'package:flutter_app/pages/reset_password_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 25, 125),
        title: Row(
          children: [
            const Text(
              "Inicia sesión",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 120),
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
                        "Inicia sesión con tu cuenta",
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
                    padding: EdgeInsets.only(top: 25),
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
                    padding: EdgeInsets.only(top: 25),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Contraseña',
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
                        suffixIcon: const Icon(
                          Icons.remove_red_eye,
                          color: Color.fromARGB(158, 68, 68, 68),
                          size: 30,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: ("Contraseña"),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿Olvidaste tú contraseña?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(158, 68, 68, 68),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ResetPasswordView()),
                          );
                        },
                        child: const Text(
                          'Recuperar contraseña',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16),
                        ),
                      )
                    ],
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
                        padding: const EdgeInsets.only(top: 50),
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
                                  "Iniciar sesión",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿No tienes una cuenta?',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterView()),
                          );
                        },
                        child: const Text(
                          'Registrate',
                          style:
                              TextStyle(color: Colors.pinkAccent, fontSize: 16),
                        ),
                      )
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
