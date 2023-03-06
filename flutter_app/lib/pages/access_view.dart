import 'package:flutter/gestures.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/profile_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app/pages/register_view.dart';
import 'package:flutter_app/pages/login_view.dart';

class AccessView extends StatefulWidget {
  const AccessView({super.key});

  @override
  State<AccessView> createState() => _AccessViewState();
}

class _AccessViewState extends State<AccessView> {
  Future<UserCredential?> signInWithGoogle() async {
    // Create an instance of the firebase auth and google signin
    FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();
    //Triger the authentication flow
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

    //Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    //Create a new credentials
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    //Sign in the user with the credentials
    final UserCredential userCredential =
        await auth.signInWithCredential(credential);
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Logo//
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 80.0, vertical: 100),
            child: SizedBox(
                child: Image.asset(
              'assets/images/A1.png',
              width: 200,
              height: 200,
            )),
          ),
          //Google
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () async {
                      await signInWithGoogle();
                      if (mounted) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProfileView(),
                          ),
                        );
                      }
                    },
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: SizedBox(
              height: 60,
              width: double.infinity,
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
                      FontAwesomeIcons.squareFacebook,
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
          //E-amil
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
            child: SizedBox(
              height: 60,
              width: double.infinity,
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
                    width: 3,
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
          //Opciones
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
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
                  height: 30,
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
                  padding: const EdgeInsets.only(top: 40),
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.normal,
                      ),
                      children: [
                        const TextSpan(
                          text: "¿Ya tienes una cuenta?",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginView()));
                            },
                          text: " Iniciar sesión",
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color.fromARGB(255, 252, 20, 95),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
