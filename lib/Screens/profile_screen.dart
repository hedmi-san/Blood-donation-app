import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/downloud.dart';
import 'package:givealife/Screens/history.dart';
import 'package:givealife/Screens/infoForm_screen.dart';
import '../Components/border_container.dart';
import '../Components/image_box.dart';
import '../Components/omni_button.dart';
import '../utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:givealife/main_wrapper.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // final splash = InkRipple(color: Colors.black, controller: null, position: null, referenceBox: null, textDirection: null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: FadeIn(
            delay: const Duration(milliseconds: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainWrapper(0)),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: primaryColor,
                        size: 35,
                      ),
                    ),
                    const Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InfoScreen()),
                        );
                      },
                      icon: const Icon(
                        Icons.edit_outlined,
                        color: primaryColor,
                        size: 35,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          ImageBox(
                            image: Image.asset(
                              'images/avatar.png',
                              fit: BoxFit.cover,
                            ),
                            elevation: 5,
                            width: 120,
                            height: 120,
                            cornerRadius: 120,
                          ),
                          const Positioned(
                            right: 0,
                            bottom: 0,
                            child: BorderContainer(
                              backgroundColor: Colors.white,
                              elevation: 5,
                              cornerRadius: 40,
                              child: Icon(
                                Icons.male,
                                color: primaryColor,
                                size: 40,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                const Text(
                  'Ahmed Mohcen',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BorderContainer(
                        backgroundColor: Colors.white,
                        elevation: 5,
                        cornerRadius: 20,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.favorite_border,
                              color: primaryColor,
                              size: 33,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Life saved',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderContainer(
                        backgroundColor: Colors.white,
                        elevation: 5,
                        padding: const EdgeInsets.all(10),
                        cornerRadius: 20,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.water_drop_outlined,
                              color: primaryColor,
                              size: 33,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                FittedBox(
                                  child: Text(
                                    'Blood group',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    'O+ (Positive)',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BorderContainer(
                        backgroundColor: Colors.white,
                        elevation: 5,
                        cornerRadius: 20,
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.monitor_weight_outlined,
                              color: primaryColor,
                              size: 33,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Weight',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Text(
                                  '76Kg',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: BorderContainer(
                        backgroundColor: Colors.white,
                        elevation: 5,
                        padding: const EdgeInsets.all(10),
                        cornerRadius: 20,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.height,
                              color: primaryColor,
                              size: 33,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                FittedBox(
                                  child: Text(
                                    'Height',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                                FittedBox(
                                  child: Text(
                                    '190 cm',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                BorderContainer(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  cornerRadius: 20,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_month_outlined,
                        color: primaryColor,
                        size: 33,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Date of birth',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '30- June- 2000',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                BorderContainer(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  cornerRadius: 20,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.email_outlined,
                        color: primaryColor,
                        size: 33,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Email',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            'Ahmedmohcen@gmail.com',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                BorderContainer(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  cornerRadius: 20,
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone_outlined,
                        color: primaryColor,
                        size: 33,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Mobile number',
                            style: TextStyle(fontSize: 15),
                          ),
                          Text(
                            '+213 55 71 78 07  ',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                OmniButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryScreen()),
                    );
                  },
                  text: 'Check if You are availibale to donate',
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  cornerRadius: 20,
                  textStyle: const TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: 10,
                ),
                OmniButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DownloadingDialog()),
                    );
                  },
                  text: 'Receive blood test results',
                  backgroundColor: primaryColor,
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  cornerRadius: 20,
                  textStyle: const TextStyle(fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
