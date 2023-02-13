import 'package:flutter/material.dart';
import 'package:flutter_app/pages/register_view.dart';
import 'package:flutter_app/pages/login_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AccessView extends StatefulWidget {
  const AccessView({super.key});

  @override
  State<AccessView> createState() => _AccessViewState();
}

class _AccessViewState extends State<AccessView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            //Logo//
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/images/A2.png',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            //Google
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child: MaterialButton(
                      onPressed: () => {},
                      color: const Color.fromARGB(255, 63, 104, 236),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 63, 104, 236),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.google,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              "Continuar con Google",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Facebook
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child: MaterialButton(
                      onPressed: () => {},
                      color: const Color.fromARGB(255, 50, 79, 165),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color.fromARGB(255, 50, 79, 165),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          FaIcon(
                            FontAwesomeIcons.facebookSquare,
                            color: Color.fromARGB(255, 255, 255, 255),
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              "Continuar con Facebook",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //E-amil
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child: MaterialButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterView()),
                        ),
                      },
                      color: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 4,
                          color: Color.fromARGB(158, 68, 68, 68),
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.email,
                            color: Color.fromARGB(158, 68, 68, 68),
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              "Registrarse con e-mail",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(158, 68, 68, 68),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            //Opciones
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                children: [
                  SizedBox(
                    height: 35,
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        "Entrar como invitado",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 252, 20, 95),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    child: TextButton(
                      onPressed: () => {},
                      child: const Text(
                        "Entrar como vendedor",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 117, 167, 87),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "¿Ya tienes una cuenta?",
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            TextButton(
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginView()),
                                ),
                              },
                              child: const Text(
                                "Iniciar sesión",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 252, 20, 95),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
