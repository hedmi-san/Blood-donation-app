import 'package:flutter/material.dart';
import 'package:givealife/main_wrapper.dart';

class CogratulationScreen extends StatelessWidget {
  const CogratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'images/healthy-man-donating-his-blood.png',
            height: 400,
          ),
          Text(
            'Profile Created Successfully !\nYou Are Now a Life Saver',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>MainWrapper(0)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(156, 9, 9, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )))
        ],
      ),
    ));
  }
}
