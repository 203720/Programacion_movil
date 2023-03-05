import 'package:flutter/material.dart';
import 'package:flutter_app/pages/login_view.dart';
class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _checked = false;
  bool _passHiden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 25, 125),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Regístrate",
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
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
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 40.0),
                            child: Text(
                              "Crea una cuenta para empezar a usar la app",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(158, 68, 68, 68),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      //Formulario
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Nombre',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                hintText: ("Nombre completo"),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: SizedBox(
                              width: double.infinity,
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
                            padding: const EdgeInsets.only(bottom: 10),
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
                            padding: EdgeInsets.symmetric(vertical: 10.0),
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
                          TextField(
                            obscureText: _passHiden,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              hintText: ('Contraseña'),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passHiden = !_passHiden;
                                  });
                                },
                                child: Icon(_passHiden
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 5.0),
                            child: Text(
                              "La contraseña debe contener caracteres, números y símbolos con un mínimo de 6 caracteres.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromARGB(158, 68, 68, 68),
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _checked,
                                  onChanged: (checked) {
                                    setState(() {
                                      _checked = checked!;
                                    });
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                ),
                                RichText(
                                  maxLines: 2,
                                  text: const TextSpan(
                                    children: [
                                      TextSpan(
                                          text: "Al registrarme, acepto ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                      TextSpan(
                                          text: "los términos y condiciones ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 252, 20, 95))),
                                      TextSpan(
                                          text: "y \nla ",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                      TextSpan(
                                        text: "política de privacidad",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 252, 20, 95),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),

                      //Iniciar sesión
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 80),
                                child: SizedBox(
                                  height: 60,
                                  width: 370,
                                  child: MaterialButton(
                                    onPressed: () => {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterView()),
                                      ),
                                    },
                                    color: const Color.fromARGB(
                                        255, 117, 167, 875),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        width: 1,
                                        color:
                                            Color.fromARGB(255, 117, 167, 875),
                                      ),
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: const [
                                        Text(
                                          "Crear cuenta",
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
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
                                '¿Ya tienes cuenta?',
                                style: TextStyle(fontSize: 16),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginView()),
                                  );
                                },
                                child: const Text(
                                  'Iniciar sesión',
                                  style: TextStyle(
                                      color: Colors.pinkAccent, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ],
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
