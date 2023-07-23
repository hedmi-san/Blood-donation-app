import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:givealife/Screens/done_booking.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:page_transition/page_transition.dart';
import '../Components/omni_button.dart';
import '../utils/constants.dart';

class CheckScreen extends StatefulWidget {
  const CheckScreen({super.key});
  static String id = "/booking";
  @override
  State<CheckScreen> createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  CollectionReference answers =
      FirebaseFirestore.instance.collection('answers');
  final List<int> _groupValue = [0, 0, 0, 0, 0, 0];
  var answer1, answer2, answer3, answer4, answer5, answer6;
  Future adddata(
    String answer1,
    String answer2,
    String answer3,
    String answer4,
    String answer5,
    String answer6,
  ) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String uid = user.uid;
      DocumentReference requestDocRef = answers.doc(uid);
      await requestDocRef.set({
        "Have you ever donated blood before?": answer1,
        "Have you had any tattoos in the past 6 months ?": answer2,
        "Have you ever been deferred from donating blood due to a medical condition or other factor?":
            answer3,
        "Are you between 18 and 60 years old?": answer4,
        "If you are a woman, are you pregnant?": answer5,
        "Are you breastfeeding?": answer6,
        "User id": user.uid,
        "Email": user.email,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: FadeIn(
            delay: const Duration(milliseconds: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // ignore: deprecated_member_use
                TypewriterAnimatedTextKit(
                  speed: const Duration(milliseconds: 170),
                  repeatForever: false,
                  totalRepeatCount: 1,
                  text: const ['Check Eligibility'],
                  textStyle: const TextStyle(
                      color: Color.fromRGBO(156, 9, 9, 1),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '1. Have you ever donated blood before?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 1,
                          groupValue: _groupValue[0],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[0] = value!;
                              answer1 = "yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 2,
                          groupValue: _groupValue[0],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[0] = value!;
                              answer1 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '2. Have you had any tattoos in the past 6 months ?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 3,
                          groupValue: _groupValue[1],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[1] = value!;
                              answer2 = "Yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 4,
                          groupValue: _groupValue[1],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[1] = value!;
                              answer2 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '3. Have you ever been deferred from donating blood due to a medical condition or other factor?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 5,
                          groupValue: _groupValue[2],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[2] = value!;
                              answer3 = "Yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 6,
                          groupValue: _groupValue[2],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[2] = value!;
                              answer3 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '4. Are you between 18 and 60 years old?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 7,
                          groupValue: _groupValue[3],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[3] = value!;
                              answer4 = "Yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 8,
                          groupValue: _groupValue[3],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[3] = value!;
                              answer4 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '5. If you are a woman, are you pregnant?',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 9,
                          groupValue: _groupValue[4],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[4] = value!;
                              answer5 = "Yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 10,
                          groupValue: _groupValue[4],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[4] = value!;
                              answer5 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                SlideInUp(
                  duration: const Duration(milliseconds: 500),
                  child: const Text(
                    '6. Are you breastfeeding?',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('Yes'),
                        Radio<int>(
                          value: 11,
                          groupValue: _groupValue[5],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[5] = value!;
                              answer6 = "Yes";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('No'),
                        Radio<int>(
                          value: 12,
                          groupValue: _groupValue[5],
                          activeColor: primaryColor,
                          onChanged: (value) {
                            setState(() {
                              _groupValue[5] = value!;
                              answer6 = "No";
                            });
                          },
                        ),
                      ],
                    )
                  ],
                ),
                BounceInUp(
                  delay: const Duration(milliseconds: 500),
                  child: OmniButton(
                    onPressed: () {
                      adddata(
                          answer1, answer2, answer3, answer4, answer5, answer6);
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              duration: const Duration(milliseconds: 700),
                              child: Donebooking()));
                    },
                    text: 'Verify',
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    textStyle: const TextStyle(fontSize: 20),
                    backgroundColor: primaryColor,
                    cornerRadius: 15,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
