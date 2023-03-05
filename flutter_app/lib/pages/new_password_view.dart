import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_view.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _NewPasswordViewState();
}

class _NewPasswordViewState extends State<NewPasswordView> {
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
                              'Por seguridad, tu contraseña debe tener una longitud de entre 8 y15 caracteres, usar mayúsculas, minúsculas, contener por lo menos un número y un carácter especial',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF767677),
                                  fontWeight: FontWeight.w900),
                                  textAlign: TextAlign.justify,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Nueva contraseña',
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
                                hintText: ('Nueva contraseña'),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text('Confirmar nueva contraseña',
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
                                hintText: ('Confirma tu nueva contraseña'),
                              ),
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginView()),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            child: const Text(
                              'Actualizar contraseña',
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
