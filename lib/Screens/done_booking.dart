import 'package:flutter/material.dart';
import 'package:givealife/main_wrapper.dart';


class Donebooking extends StatelessWidget {
  const Donebooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/yaya.png',
            height: 280,
          ),
          Text(
            'Your blood donation appointment \n           has been booked',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          ),
          SizedBox(
              height: 45,
              width: 300,
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
                    'Home',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )))
        ],
      ),
    ));
  }
}
