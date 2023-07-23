import 'package:flutter/material.dart ';
import 'package:givealife/Screens/auth_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../main_wrapper.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});
  @override
  State<AuthForm> createState() => _AuthFrmState();
}

class _AuthFrmState extends State<AuthForm> {
  final emailContr = TextEditingController();
  final paswrdContr = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    emailContr.dispose();
    paswrdContr.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              TextFormField(
                controller: emailContr,
                keyboardType: TextInputType.emailAddress,
                validator: (value) =>
                    value!.isEmpty ? 'Enter a valide email' : null,
                decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                controller: paswrdContr,
                validator: (value) =>
                    value!.isEmpty ? 'Please enter a valid password' : null,
                decoration: InputDecoration(
                    hintText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.red,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                    )),
                obscureText: true,
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formkey.currentState!.validate()) {
                          var resault = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: emailContr.text.trim(),
                                  password: paswrdContr.text.trim());
                          if (resault != null) {
                            var userInfo = FirebaseFirestore.instance
                                .collection('users')
                                .doc()
                                .set({
                              'Email': resault.user?.email,
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MainWrapper(0)),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AuthScreen()),
                            );
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(156, 9, 9, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )))
            ],
          )),
    );
  }
}
