import 'package:flutter/material.dart';
import 'package:flutter_app/pages/new_password_view.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Recuperar contraseña",
              style: TextStyle(
                fontSize: 22,
                color: Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.normal,
              ),
            ),
            Image.asset(
              'assets/images/A3.png',
              scale: 5.3,
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: LayoutBuilder(
            builder:
                (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            child: Text(
                              'Ingresa tu email para restablecer tu contraseña',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF767677),
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Correo electrónico',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                hintText: ('Dirección de correo'),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0),
                            child: Text(
                              'Ingrese su correo electrónico registrado y le enivaremos un correo electrónico que contiene un enlace para restablecer su contraseña.',
                              style: TextStyle(
                                  color: Color(0xFF767677), fontSize: 13),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                            padding: const EdgeInsets.only(bottom: 40.0),
                            child: SizedBox(
                              width: double.infinity,
                              height: 55.0,
                              child: MaterialButton(
                                color: const Color(0xFF75a757),
                                onPressed: () {
                                  Navigator.push(context,
                                    MaterialPageRoute(
                                          builder: (context) => const NewPasswordView()),
                                    );
                                },
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0)),
                                child: const Text(
                                  'Enviar Solicitud',
                                  style: TextStyle(
                                      fontSize: 18.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
