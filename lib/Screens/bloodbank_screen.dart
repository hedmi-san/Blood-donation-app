import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/elelma.dart';
import 'package:givealife/Screens/hachimi.dart';
import 'package:givealife/Screens/request_screen.dart';
import 'package:givealife/Screens/sadana.dart';
import 'package:givealife/main_wrapper.dart';
import '../Components/border_container.dart';
import '../Components/omni_button.dart';
import 'package:flutter/material.dart';
import '../Components/image_box.dart';
import '../utils/constants.dart';

class Bloodbankscreen extends StatefulWidget {
  const Bloodbankscreen({super.key});

  @override
  State<Bloodbankscreen> createState() => _Bloodbankscreen();
}

class _Bloodbankscreen extends State<Bloodbankscreen> {
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  MainWrapper(0)),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: primaryColor,
                      size: 35,
                    ),
                  ),
                  const Text(
                    'Blood Banks ',
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
                                    'Hôpital SAADNA MOHAMED',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'The needy blood group O+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'شارع فلاحي السعيد 05788',
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
                                        text: 'Donate',
                                        onPressed: () {
                                          Navigator.push(
                                        context,
                                   MaterialPageRoute(builder: (context) => const SadanaScreen()),
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
                                    'EPSP HACHIMI DE SETIF',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'The needy Blood group O+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Rue Belaid Mohamed 02444',
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
                                        text: 'Donate',
                                        onPressed: () {

                                          Navigator.push(
                                        context,
                                   MaterialPageRoute(builder: (context) => const HachimiScreen()),
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
                                    'Hôpital El Eulma',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'The needy Plasma group O+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Rue Lalem Youcef 02400',
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
                                        text: 'Donate',
                                        onPressed: () {
                                          Navigator.push(
                                        context,
                                   MaterialPageRoute(builder: (context) => const ElelmaScreen()),
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
                              'images/bed.png',
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
                                    'Hopital de Bougaa',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'The needy blood group O+',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                const FittedBox(
                                  child: Text(
                                    'Rue Mekes Seddik ',
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
                                        text: 'Donate',
                                        onPressed: () {
                                          Navigator.push(
                                        context,
                                   MaterialPageRoute(builder: (context) => const RequestScreen()),
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
