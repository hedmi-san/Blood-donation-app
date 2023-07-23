import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'second_screen.dart';
import '../auth_screen.dart';


class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 245, 7, 7),
              Color.fromARGB(235, 223, 104, 104),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('images/logo.png'),
                  const SizedBox(
                    height: 120,
                  ),
                  Positioned(
                    bottom: 200,
                    child: SizedBox(
                        height: 45,
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context, PageTransition(type: PageTransitionType.fade,duration:  Duration(milliseconds:700 ), child: SecondScreen()));
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(150, 19, 19, 100),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            child: const Text(
                              'Next',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Positioned(
                    top: 200,
                    height: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do you already have an account?',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthScreen()),
                            );
                          },
                          child: Text(
                            'Log in',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255)),
                          ),
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
