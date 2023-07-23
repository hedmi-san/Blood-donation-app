
import 'package:flutter/material.dart';
import 'package:givealife/Screens/intro%20screns/fifth_screen.dart';
import 'package:page_transition/page_transition.dart';

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen>
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
                'Here\'s why you Should join:',
                style: TextStyle(
                  color: Color.fromRGBO(156, 9, 9, 1),
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
                SizedBox(
                  height: 30,
                ),
                FadeTransition(
                  opacity: _controller,
                  child: Text(
                    '  Impact lives: Your blood can\n'
                    '   save up to 3 lives with just\n'
                    '   one Donation! Imagine the\n'
                    '    difference you can make\n '
                    '               over time 🌟',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                FadeTransition(
                  opacity: _controller,
                  child: Text(
                    ' Stay informed: Receive \n'
                    ' notifications about urgent \n'
                    ' blood needs in your area,\n'
                    ' making it easy to step up  \n '
                    'when it matters most 🚨',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(
                  height: 25,
                ),
                FadeTransition(
                  opacity: _controller,
                  child: Text(
                    '    Stay healthy: Donating \n'
                    '  blood can help you maintain \n'
                    '  optimal health by monitoring\n'
                    '       your iron levels and \n'
                    '  identifying health issues 💪\n'
                    '         ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),

                FadeTransition(
                  opacity: _controller,
                  child: Container(
                    margin: EdgeInsets.all(0),
                    child: Text(
                      '    Track your donations: Keep  \n'
                      '   a record of your donations \n'
                      '   and monitor your progress  \n'
                      '   toward smaking a lasting \n '
                      '                impact 📈',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizeTransition(
                    sizeFactor: _controller,
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
                              child: FifthScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(156, 9, 9, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}