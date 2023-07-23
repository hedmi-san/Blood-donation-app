import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/campevent.dart';
import '../Components/border_container.dart';
import '../Components/omni_button.dart';
import 'package:flutter/material.dart';
import '../Components/image_box.dart';
import '../utils/constants.dart';

class DonateScreen extends StatefulWidget {
  const DonateScreen({super.key});

  @override
  State<DonateScreen> createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
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
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/room_sample2.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Hospital of Ain oulmane',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Friday, 24 March, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/room_sample1.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Red Cross Algeria',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Saturday, 25 March, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/patient_sample2.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Ferhat Abbas university',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Sunday, 26 March, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {
                                        Navigator.push(
                                        context,
                                  MaterialPageRoute(builder: (context) => const Campscreen()),
                                    );
                                        }),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/patient_sample1.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Red Cross Algeria',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Monday, 27 March, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/PPPP.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Lamine Debaghine University',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Friday, 24 March, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {}),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    BorderContainer(
                      backgroundColor: Colors.white,
                      height: 120,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      elevation: 5,
                      child: Row(
                        children: [
                          ImageBox(
                            margin: EdgeInsets.zero,
                            width: 120,
                            height: 100,
                            elevation: 5,
                            image: Image.asset(
                              'images/R.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const FittedBox(
                                  child: Text(
                                    'Blood Donation Camp',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Hospital of Ain Azal',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Friday, 30 Mai, 2023',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    OmniButton(
                                        elevation: 0,
                                        backgroundColor: primaryColor,
                                        margin: EdgeInsets.zero,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 2),
                                        text: 'Visit us',
                                        onPressed: () {}),
                                  ],
                                )
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
          ],
        ),
      ),
    );
  }
}
