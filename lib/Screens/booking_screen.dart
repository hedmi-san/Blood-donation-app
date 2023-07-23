import 'package:animate_do/animate_do.dart';
import 'package:givealife/Screens/done_booking.dart';
import '../Components/omni_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Components/omni_radio.dart';
import '../utils/constants.dart';
import './check_screen.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});
  static String id = "/booking";
  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  CollectionReference request =
      FirebaseFirestore.instance.collection('request');
  Future<DateTime?> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2021),
      lastDate: DateTime(2025),
    );
    return picked;
  }

  String dateStr = '  /   /   ';
  final idReservationCont = TextEditingController();
  final dateContr = TextEditingController();
  String selected_time = "";
  final locationContr = TextEditingController();
  int? selectedValue;
  User? user = FirebaseAuth.instance.currentUser;
  Future adddata(
    String date,
    String time,
  ) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String uid = user.uid;
      DocumentReference requestDocRef = request.doc(uid);
      await requestDocRef.set({
        "Selected date": dateStr,
        "Selected time": selected_time,
        "User id": user.uid,
        "Email": user.email,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: FadeIn(
            delay: const Duration(milliseconds: 250),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                      'Book Appointement',
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: primaryColor,
                      size: 45,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Blood Bank sétif ,Center City',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Route numéro 44 Yacine khebrara',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    OmniButton(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      icon: const Icon(
                        Icons.calendar_month_outlined,
                        color: primaryColor,
                        size: 30,
                      ),
                      backgroundColor: Colors.white,
                      text: dateStr,
                      elevation: 5,
                      textStyle:
                          const TextStyle(color: primaryColor, fontSize: 20),
                      onPressed: () async {
                        final DateTime? pickedDate = await selectDate(context);
                        if (pickedDate != null) {
                          setState(() {
                            dateStr =
                                DateFormat('yyyy/MM/dd').format(pickedDate);
                          });
                        }
                      },
                    ),
                  ],
                ),
                const Text(
                  'Pick a time slot',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    children: <Widget>[
                      OmniRadio<int>(
                        value: 1,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "9:00 -10:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '9:00 -10:30',
                      ),
                      OmniRadio<int>(
                        value: 2,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "11:00 -12:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '11:00 -12:30',
                      ),
                      OmniRadio<int>(
                        value: 3,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "13:30 -14:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '13:30 -14:30',
                      ),
                      OmniRadio<int>(
                        value: 4,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "15:00 -16:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '15:00 -16:30',
                      ),
                      OmniRadio<int>(
                        value: 5,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "17:00 -18:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '17:00 -18:30',
                      ),
                      OmniRadio<int>(
                        value: 6,
                        elevation: 5,
                        activeColor: primaryColor,
                        borderColor: Colors.transparent,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 15),
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                            selected_time = "19:00 -20:30";
                          });
                        },
                        icon: Icons.watch_later_outlined,
                        text: '19:00 -20:30',
                      ),
                    ],
                  ),
                ),
                OmniButton(
                  text: 'Confirm',
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  textStyle: const TextStyle(fontSize: 20),
                  backgroundColor: primaryColor,
                  cornerRadius: 15,
                  onPressed: () {
                    adddata(dateStr, selected_time);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CheckScreen()));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Reserve {
  String id;
  String selectedDate;
  String Useruid;
  Reserve(this.id, this.selectedDate, this.Useruid);
  Map<String, dynamic> toMap() {
    return {
      'id': id,
    };
  }
}
