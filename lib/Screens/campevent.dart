import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/fulldiscription_screen.dart';
import 'package:flutter/material.dart';
import '../Components/omni_button.dart';
import '../utils/constants.dart';

class Campscreen extends StatefulWidget {
  const Campscreen({super.key});

  @override
  State<Campscreen> createState() => _CampscreenState();
}

class _CampscreenState extends State<Campscreen> {
  // final splash = InkRipple(color: Colors.black, controller: null, position: null, referenceBox: null, textDirection: null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: FadeIn(
          delay: const Duration(milliseconds: 250),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
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
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(
                  'images/patient_sample1.jfif',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Blood Donation Camp',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Come join us at our upcoming Blood Donation Camp, where you can make a life-saving difference for those in need Lets make a difference together!',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
              OmniButton(
                text: 'See More',
                padding: const EdgeInsets.symmetric(vertical: 12),
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: primaryColor,
                cornerRadius: 15,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DescriScreen()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
