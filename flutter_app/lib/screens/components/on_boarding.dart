import 'package:flutter/material.dart';
import 'package:flutter_app/screens/components/content_boarding.dart';

import '../../pages/login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentPage = 0;
  late PageController pageController;

  List<Map<String, String>> listBoarding = [
    {
      'text': 'ESPARCIMIENTO',
      'descripcion':
          'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/images/B1.png'
    },
    {
      'text': 'ADOPCIÓN',
      'descripcion':
          'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/images/B2.png'
    },
    {
      'text': 'HOSPITALIDAD',
      'descripcion':
          'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/images/B3.png'
    },
    {
      'text': 'VETERINARIA',
      'descripcion':
          'Brindamos todos los servicios para consentir a tu mascota',
      'image': 'assets/images/B4.png'
    },
    {
      'text': 'TIENDA',
      'descripcion':
          'Compra todas las necesidades de tu mascota sin salir de casa',
      'image': 'assets/images/B5.png'
    },
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, index) => ContentBoarding(
                  image: listBoarding[index]["image"],
                  text: listBoarding[index]["text"],
                  descripcion: listBoarding[index]["descripcion"],
                  child: const Padding(padding: EdgeInsets.all(8.0)),
                ),
                controller: pageController,
                itemCount: listBoarding.length,
                onPageChanged: (int page) {
                  setState(() {
                    currentPage = page;
                  });
                },
              ),
            ),
            Expanded(
              flex: 0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          listBoarding.length,
                          (index) =>
                              pages(index: index, currentPage: currentPage)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: SizedBox(
                height: 50,
                width: 350,
                child: MaterialButton(
                  color: currentPage == listBoarding.length - 1
                      ? Colors.green
                      : Colors.white,
                  onPressed: () async {
                    currentPage == listBoarding.length - 1
                        ? Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Login()))
                        : pageController.nextPage(
                            duration: const Duration(milliseconds: 800),
                            curve: Curves.easeInOutQuint);
                  },
                  textColor: currentPage == listBoarding.length - 1
                      ? Colors.white
                      : Colors.grey,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 3, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(currentPage == listBoarding.length - 1
                      ? 'Continuar'
                      : 'Siguiente'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

AnimatedContainer pages({required int index, required int currentPage}) {
  return AnimatedContainer(
    margin: const EdgeInsets.only(right: 5),
    duration: const Duration(milliseconds: 300),
    width: currentPage == index ? 35 : 25,
    height: 8,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: currentPage == index ? Colors.red : Colors.grey),
  );
}
