import 'package:flutter/material.dart ';
import './widgets/sign_form.dart';
import 'auth_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    margin: EdgeInsets.all(0),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset('images/Redlogo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SignForm(),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Do you already have an account?',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
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
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 0, 0)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
