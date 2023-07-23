import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:animate_do/animate_do.dart';

class DescriScreen extends StatelessWidget {
  const DescriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
        delay: const Duration(milliseconds: 250),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: primaryColor,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'Campaigns and events',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                'Come join us at our upcoming Blood Donation Camp, where you can make a life-saving difference for those in need. Our event will take place on',
                            style: TextStyle(
                              wordSpacing: 7,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.4,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' [26/03/2023] at [Ferhat Abbas university] from [9:00 -16:30].\n ',
                            style: TextStyle(
                              wordSpacing: 7,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.45,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                          ),
                          TextSpan(
                            text:
                                ' Not only will you be helping to save lives, but you\'ll also be able to enjoy a variety of fun activities and refreshments.There will be music, games, and giveaways throughout the day, along with a chance to meet other donors and learn more about the importance of blood donation.\n',
                            style: TextStyle(
                              wordSpacing: 7,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Donating blood takes just a few minutes of your time, but it can make a world of difference for someone in need. So mark your calendars and come out to support this important cause.',
                            style: TextStyle(
                              wordSpacing: 7,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              height: 1.5,
                              letterSpacing: 1,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          TextSpan(
                            text: ' Let\'s make a difference together!\n' ,
                            style: TextStyle(
                              wordSpacing: 7,
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              height: 2,
                              letterSpacing: 1,
                              
                              color: Color.fromARGB(255, 255, 0, 0),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
