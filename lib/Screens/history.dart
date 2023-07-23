import 'package:flutter/material.dart';
import 'package:givealife/Screens/mainhistory_screen.dart';
import '../utils/constants.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.only(top: 20),
          child: IconButton(
            
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: primaryColor,
              size: 30,
            ),
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(
                Icons.history,
                color: primaryColor,
                size: 37,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainHistoryScreen()),
                );
              },
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: SizedBox(
                    width: 155,
                    height: 545,
                    child: Image.asset('images/human.png')),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    height: 1.2142857143,
                    letterSpacing: 1,
                    color: Color(0xff0e1a29),
                  ),
                  children: [
                    TextSpan(
                      text: 'You will be able\n to donate in\n ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.2142857143,
                        letterSpacing: 1,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    TextSpan(
                      text: '14 Days  ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.2142857143,
                        letterSpacing: 1,
                        color: Color(0xff951313),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Last donate on \n',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2142857143,
                    letterSpacing: 1,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                TextSpan(
                  text: '13/2/2023',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    height: 1.2142857143,
                    letterSpacing: 1,
                    color: Color(0xff951313),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
