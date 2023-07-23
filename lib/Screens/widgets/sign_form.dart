import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:givealife/utils/constants.dart';
import '../infoForm_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  final _emailContr = TextEditingController();
  final _paswrdContr = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: _emailContr,
                  validator: (value) =>
                      value!.isEmpty ? 'Enter a valide email' : null,
                  keyboardType: TextInputType.emailAddress,
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
                    ),
                  ),
                ),
                TextFormField(
                  controller: _paswrdContr,
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
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                  child: SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () async {
                            if (_formkey.currentState!.validate()) {
                              var resault = await FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: _emailContr.text.trim(),
                                      password: _paswrdContr.text.trim());
                              if (resault != null) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InfoScreen()),
                                );
                              } else {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignForm()),
                                );
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text(
                            'Sign up',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ))),
                )
              ],
            )),
      ),
    );
  }
}
