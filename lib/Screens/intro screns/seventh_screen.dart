import 'package:flutter/material.dart';

import 'package:page_transition/page_transition.dart';
import '../sign_in_screen.dart';

class SeventhScreen extends StatefulWidget {
  @override
  _SeventhScreenState createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              FadeTransition(
                opacity: _animation,
                child: Image.asset('images/3.jpg'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Be Safe With us',
                style: TextStyle(
                  color: Color.fromRGBO(156, 9, 9, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DM Sans',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0, 1),
                  end: Offset.zero,
                ).animate(_animation),
                child: Text(
                  'We will connect you with trusted\n'
                  'places to donate your blood\n               To donate blood',
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: SizeTransition(
                  sizeFactor: _animation,
                  child: SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 500),
                                child: SignInScreen()));
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
