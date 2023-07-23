import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/auth_screen.dart';
import 'package:givealife/Screens/bloodbank_screen.dart';
import 'package:givealife/Screens/bugaa.dart';
import 'package:givealife/Screens/campevent.dart';
import 'package:givealife/Screens/donate_screen.dart';
import 'package:givealife/Screens/request_screen.dart';
import 'package:givealife/Screens/sadana.dart';
import '../Components/border_container.dart';
import '../Components/image_box.dart';
import 'package:flutter/material.dart';
import '../Screens/notification_screen.dart';

import '../utils/constants.dart';

class HomeSreen extends StatefulWidget {
  const HomeSreen({super.key});

  @override
  State<HomeSreen> createState() => _HomeSreenState();
}

class _HomeSreenState extends State<HomeSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(18.0),
        child: FadeIn(
          delay: const Duration(milliseconds: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('images/avatar.png'),
                      ),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Hello',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: ' Ahmed',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primaryColor)),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthScreen()),
                      );
                    },
                    icon: const Icon(
                      Icons.logout_outlined,
                      color: primaryColor,
                      size: 35,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search for blood donor or hospital',
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    hintStyle: const TextStyle(color: Colors.white),
                    fillColor: const Color.fromARGB(255, 195, 193, 193),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Campaigns and events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonateScreen()),
                      );
                    },
                    child: const Text(
                      'View all..',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        ImageBox(
                          margin: const EdgeInsets.only(
                              right: 10, bottom: 0, left: 5, top: 5),
                          width: 170,
                          height: 115,
                          elevation: 5,
                          image: Image.asset(
                            'images/patient_sample1.jfif',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Campscreen()),
                            );
                          },
                          child: const Text(
                            'Ferhat Abbas university',
                            style: TextStyle(
                                height: 0,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ImageBox(
                          margin: const EdgeInsets.only(
                              right: 10, bottom: 0, left: 5, top: 5),
                          width: 170,
                          height: 115,
                          elevation: 5,
                          image: Image.asset(
                            'images/patient_sample2.jfif',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {},
                          child: const Text(
                            'World Blood Donation Day',
                            style: TextStyle(
                                height: 0,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Blood Banks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                        context,
                        // ignore: prefer_const_constructors
                        MaterialPageRoute(
                            builder: (context) => Bloodbankscreen()),
                      );
                    },
                    child: const Text(
                      'View all..',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        ImageBox(
                          margin:
                              const EdgeInsets.only(right: 10, left: 5, top: 5),
                          width: 170,
                          height: 115,
                          elevation: 5,
                          image: Image.asset(
                            'images/room_sample1.jfif',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SadanaScreen()),
                            );
                          },
                          child: const Text(
                            'Hôpital SAADNA MOHAMED',
                            style: TextStyle(
                                height: 0,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ImageBox(
                          margin:
                              const EdgeInsets.only(right: 10, left: 5, top: 5),
                          width: 170,
                          height: 115,
                          elevation: 5,
                          image: Image.asset(
                            'images/room_sample2.jfif',
                            fit: BoxFit.cover,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: const Size(50, 30),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              alignment: Alignment.centerLeft),
                          onPressed: () {},
                          child: const Text(
                            'EPSP HACHIMI DE SETIF',
                            style: TextStyle(
                                height: 0,
                                fontSize: 13,
                                fontWeight: FontWeight.normal,
                                color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Donation requests',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: const Size(50, 30),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()),
                      );
                    },
                    child: const Text(
                      'View all..',
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 145,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    BorderContainer(
                      elevation: 5,
                      margin: const EdgeInsets.only(
                          right: 10, bottom: 10, left: 5, top: 5),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: Colors.white,
                      width: 170.0,
                      height: 120.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RequestScreen()),
                              );
                            },
                            child: const Text(
                              'O+ blood donors needed At EPSP HACHIMI center',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.black),
                            ),
                          ),
                          const Text(
                            '3 hours ago',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      elevation: 5,
                      margin: const EdgeInsets.only(
                          right: 10, bottom: 10, left: 5, top: 5),
                      padding: const EdgeInsets.all(10),
                      backgroundColor: primaryColor,
                      width: 170.0,
                      height: 120.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BougaaScreen()),
                              );
                            },
                            child: const Text(
                              'O+ blood donors needed At Bougaa Hospital as soon as possible ',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          const Text(
                            '1 hour ago',
                            textAlign: TextAlign.right,
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
