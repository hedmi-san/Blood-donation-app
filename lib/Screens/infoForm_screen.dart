import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:givealife/main_wrapper.dart';
import 'package:givealife/utils/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  CollectionReference users = FirebaseFirestore.instance.collection('users');
  final FirstnameContr = TextEditingController();
  final LastnameContr = TextEditingController();
  final AdresseContr = TextEditingController();
  final AgeContr = TextEditingController();
  final PhonContr = TextEditingController();
  final HeightContr = TextEditingController();
  final WeightContr = TextEditingController();
  final BloodContr = TextEditingController();
  final GenderContr = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  Future adddata(
      String firstname,
      String lastname,
      String phoneNumber,
      String adresse,
      String height,
      String weight,
      String bloodgroup,
      String gendre,
      String age) async {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String uid = user.uid;
      DocumentReference userDocRef = users.doc(uid);
      await userDocRef.set({
        "FirstName": firstname,
        "LastName": lastname,
        "Adresse": adresse,
        "PhoneNumber": phoneNumber,
        "Height": height,
        "Weight": weight,
        "BloodGroup ": bloodgroup,
        "Gender": gendre,
        "Age": age,
        "Email": user.email
      });
    }
  }

  Future addcontr() async {
    adddata(
      FirstnameContr.text.trim(),
      LastnameContr.text.trim(),
      PhonContr.text.trim(),
      AdresseContr.text.trim(),
      HeightContr.text.trim(),
      WeightContr.text.trim(),
      BloodContr.text.trim(),
      GenderContr.text.trim(),
      AgeContr.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'Inscription Form',
            textAlign: TextAlign.center,
          ),
          backgroundColor: primaryColor,
        ),
        body: ListView(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
              child: Builder(
                builder: (context) => Form(
                  key: _formkey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: FirstnameContr,
                        decoration: InputDecoration(
                          hintText: 'Firt Name ',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your first name'
                            : null,
                      ),
                      TextFormField(
                        controller: LastnameContr,
                        decoration: InputDecoration(
                          hintText: 'Last Name ',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your last name'
                            : null,
                      ),
                      TextFormField(
                        controller: PhonContr,
                        decoration: InputDecoration(
                          hintText: 'Phone number ',
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null; // Return null if the value is valid
                        },
                      ),
                      TextFormField(
                        controller: AdresseContr,
                        decoration: InputDecoration(
                          hintText: 'Adresse',
                          prefixIcon: Icon(
                            Icons.maps_home_work_outlined,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter your adresse' : null,
                      ),
                      TextFormField(
                        controller: HeightContr,
                        decoration: InputDecoration(
                          hintText: 'Height ',
                          prefixIcon: Icon(
                            Icons.height_sharp,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a number.';
                          }
                          if (value.length != 3) {
                            return 'Please enter your height in cm .';
                          }
                          if (int.tryParse(value) == null) {
                            return 'Please enter a valid number.';
                          }
                          return null; // Return null if the value is valid
                        },
                      ),
                      TextFormField(
                        controller: WeightContr,
                        decoration: InputDecoration(
                          hintText: 'Weight ',
                          prefixIcon: Icon(
                            Icons.monitor_weight,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter a number.';
                          }
                          if (int.tryParse(value) == null) {
                            return 'Please enter a valid number.';
                          }
                          return null; // Return null if the value is valid
                        },
                      ),
                      TextFormField(
                        controller: BloodContr,
                        decoration: InputDecoration(
                          hintText: 'Blood Group',
                          prefixIcon: Icon(
                            Icons.bloodtype,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) => value!.isEmpty
                            ? 'Please enter your Blood Type'
                            : null,
                      ),
                      TextFormField(
                        controller: GenderContr,
                        decoration: InputDecoration(
                          hintText: 'Gender',
                          prefixIcon: Icon(
                            Icons.man_4,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) =>
                            value!.isEmpty ? 'Please enter your gender' : null,
                      ),
                      TextFormField(
                        controller: AgeContr,
                        decoration: InputDecoration(
                          hintText: 'Age ',
                          prefixIcon: Icon(
                            Icons.man,
                            color: Colors.red,
                          ),
                          hintStyle: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w100,
                            fontSize: 16,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your age.';
                          }
                          int? age = int.tryParse(value);
                          if (age == null || age <= 0) {
                            return 'Please enter a valid age.';
                          }
                          if (age <= 18) {
                            return 'Age must be greater than 18.';
                          }
                          if (age >= 60) {
                            return 'Your are tooo old to donate ';
                          }
                          return null; // Return null if the value is valid
                        },
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 16.0, horizontal: 16.0),
                              child: ElevatedButton(
                                onPressed: () async {
                                  final form = _formkey.currentState;
                                  if (form!.validate()) {
                                    addcontr();
                                    _showDialog(context);
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainWrapper(0)),
                                    );
                                  }
                                  ;
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                ),
                                child: Text(
                                  'Save',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDialog(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Saving')),
    );
  }
}
