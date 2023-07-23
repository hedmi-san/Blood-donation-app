import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService {
  final auth = FirebaseAuth.instance;
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();

  Future<UserCredential?> loginWithEmailandPAssword() async {
    try {
      UserCredential User = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: Email.text, password: Password.text);
      return User;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future<UserCredential?> registerWithEmailAndPassword() async {
    try {
      UserCredential User = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: Email.text, password: Password.text);

      return User;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
