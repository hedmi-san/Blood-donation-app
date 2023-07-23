import 'package:animate_do/animate_do.dart';
import '../screens/booking_screen.dart';
import 'package:flutter/material.dart';
import '../Components/omni_button.dart';
import '../utils/constants.dart';

class ElelmaScreen extends StatefulWidget {
  const ElelmaScreen({super.key});

  @override
  State<ElelmaScreen> createState() => _ElelmaScreenState();
}

class _ElelmaScreenState extends State<ElelmaScreen> {
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
                  'images/PPPP.png',
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const Text(
                'Donation Blood Request',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
              const Text(
                'There is a Decrease in blood volume for O+ PLASMA At Hôpital El Eulma ,donors Should kindely shedule an appointement To donate blood',
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
