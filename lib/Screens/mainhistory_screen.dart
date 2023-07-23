import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:givealife/utils/constants.dart';

class MainHistoryScreen extends StatefulWidget {
  const MainHistoryScreen({super.key});

  @override
  State<MainHistoryScreen> createState() => _MainHistoryScreenState();
}

class _MainHistoryScreenState extends State<MainHistoryScreen> {
  late String uid;
  String date = '';
  String time = '';

  @override
  void initState() {
    super.initState();
    fetchUserData();
  }

  Future<void> fetchUserData() async {
    final User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        uid = user.uid;
      });
      await fetchUserName();
    }
  }

  Future<void> fetchUserName() async {
    final DocumentSnapshot snapshot =
        await FirebaseFirestore.instance.collection('request').doc(uid).get();

    setState(() {
      date = snapshot.get('Selected date');
      time = snapshot.get('Selected time');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Text(
            'History',
            textAlign: TextAlign.center,
          ),
          backgroundColor: primaryColor,
          elevation: 0,
          leading: OutlinedButton(
            style: OutlinedButton.styleFrom(
              elevation: 0,
              minimumSize: Size(20, 20),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 33.0,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.0, left: 30.0, right: 30.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    height: 80,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ListTile(
                        title: Text('Donate On : ' + date ?? '',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('at : ' + time ?? '',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    height: 80,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ListTile(
                        title: Text('Donate On : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('at : ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    height: 80,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ListTile(
                        title: Text('Donate On : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('at : ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 0, right: 0, top: 0, bottom: 0),
                    height: 80,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25),
                      ),
                    ),
                    child: Card(
                      color: Colors.white,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ListTile(
                        title: Text('Donate On : ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                        subtitle: Text('at : ',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
