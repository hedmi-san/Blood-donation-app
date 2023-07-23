import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import 'third_screen.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 60,
              ),
              FadeTransition(
                opacity: _controller,
                child: Image.asset('images/Redlogo.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Save Lives with Just a\nTap: Join Our Blood \nDonation App Today!',
                style: TextStyle(
                  color: Color.fromRGBO(156, 9, 9, 1),
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: (40),
              ),
              FadeTransition(
                opacity: _controller,
                child: Container(
                  margin: EdgeInsets.all(0),
                  child: Text(
                    ' By subscribing to our blood \n donation app, you\'ll \n become part of a\n compassionate community\n that saves lives and \n supports those in need.',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizeTransition(
                sizeFactor: _controller,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 550),
                              child: ThirdScreen()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(156, 9, 9, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white, fontSize: 23),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
