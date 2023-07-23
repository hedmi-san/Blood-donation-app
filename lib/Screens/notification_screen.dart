import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/bugaa.dart';
import 'package:givealife/Screens/campevent.dart';
import 'package:givealife/Screens/request_screen.dart';
import '../Components/border_container.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'package:givealife/main_wrapper.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: FadeIn(
          delay: const Duration(milliseconds: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MainWrapper(0)),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: primaryColor,
                      size: 35,
                    ),
                  ),
                  const Text(
                    'Notification',
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: BorderContainer(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10,vertical: 5),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: primaryColor,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children:  [
                              TextButton(
                          onPressed: () {
                            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BougaaScreen()),
                      );
                         },
                              child: const Text(
                                'O+ blood donors needed At Bougaa Hospital as soon as possible ',
                                style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w400),
                              ),
                              ),
                              const Text(
                                '15 minuts ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 15, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                        GestureDetector(
                       onTap: () {
                   },
                      child: BorderContainer(
                    elevation: 5,
                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                padding: const EdgeInsets.all(15),
                 backgroundColor: primaryColor,
                     child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RequestScreen()),
                      );
                         },
                         child: const Text(
                         'O+ blood donors needed At EPSP HACHIMI DE SETIF as soon as possible ',
                                style: TextStyle(fontSize: 17, color: Colors.white,fontWeight: FontWeight.w400),
                          ),
                               ),
                              Text(
                            '40 minutes ago',
                              textAlign: TextAlign.right,
                                 style: TextStyle(fontSize: 15, color: Colors.white),
                               ),
                       ],
                     ),
                   ),
                    ),

                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: BorderContainer(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10,vertical: 5),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Text(
                                'Blood Donation Camp At Hospital of Ain oulmane',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                '15 hours ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: BorderContainer(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10,vertical: 5),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Text(
                                'A+ blood donors needed At Sétif Blood Donation center',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                '19 hours ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                           onTap: () {
                     },
                        child: BorderContainer(
                               elevation: 5,
                       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        padding: const EdgeInsets.all(15),
                              backgroundColor: Colors.white,
                                 child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                               TextButton(
                                   onPressed: () {
                                     Navigator.push(
                                        context,
                                  MaterialPageRoute(builder: (context) => const Campscreen()),
                                    );
                                     },
                         child: const Text(
                                  'Blood Donation Camp At Ferhat Abbas university',
                                 style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.w400),
                                ),
                             ),
                               const Text(
                               '24 hours ago',
                               textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 15),
                       ),
                           ],
                        ),
                     ),
                  ),

                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: BorderContainer(
                          elevation: 5,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10,vertical: 5),
                          padding: const EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: const [
                              Text(
                                'A+ blood donors needed At Sétif Blood Donation center',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                '2 days ago',
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
