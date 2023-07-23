import 'package:flutter/material.dart';
import 'package:givealife/Screens/sign_in_screen.dart';
import './widgets/auth_form.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Column(
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
                Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Welcome',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text('Login to continue',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold))
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                AuthForm(),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an account?',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen()),
                        );
                      },
                      child: Text(
                        'Sign up',
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
          ],
        ),
      ),
    );
  }
}
