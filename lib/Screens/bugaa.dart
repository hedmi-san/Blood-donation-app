import 'package:animate_do/animate_do.dart';
import '../screens/booking_screen.dart';
import 'package:flutter/material.dart';
import '../Components/omni_button.dart';
import '../utils/constants.dart';

class BougaaScreen extends StatefulWidget {
  const BougaaScreen({super.key});

  @override
  State<BougaaScreen> createState() => _BougaaScreenState();
}

class _BougaaScreenState extends State<BougaaScreen> {
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
                  'images/bed.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Urgent Request',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: primaryColor),
                textAlign: TextAlign.center,
              ),
              const Text(
                'There is a Blood request for O+ blood donors At Bougaa Hospital as soon as possible , donors Should kindely shedule an appointement',
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                ],
              ),
              OmniButton(
                text: 'Book Appointment',
                padding: const EdgeInsets.symmetric(vertical: 12),
                textStyle: const TextStyle(fontSize: 20),
                backgroundColor: primaryColor,
                cornerRadius: 15,
                onPressed: () {
                  Navigator.pushNamed(context, BookingScreen.id);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
