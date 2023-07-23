
import './Screens/home.dart';
import './Screens/notification_screen.dart';
import './Screens/profile_screen.dart';
import './Screens/request_screen.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import 'Screens/bloodbank_screen.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper(int i, {super.key,this.index});
  final int? index;
  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _pageIndex = 0;
  final List<Widget> pages = [ HomeSreen(), Bloodbankscreen() , NotificationScreen(), ProfileScreen(),  RequestScreen()];
  
  var Super;

  @override
void initState(){
  super.initState();
   setState((){
      _pageIndex = widget.index??0;
   });
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: pages[_pageIndex],
        bottomNavigationBar: BottomBarBubble(
          onSelect: (index) {
            //this method is written like this bcz the list of pages contains only two widgets
            setState(() {
              _pageIndex = index;
            });
          },
          color: primaryColor,
          selectedIndex: _pageIndex,
          items: [
            BottomBarItem(iconData: Icons.home_outlined),
            BottomBarItem(iconData: Icons.bloodtype),
            BottomBarItem(iconData: Icons.notifications_active_outlined),
            BottomBarItem(iconData: Icons.person_outline),
          ],
        ),
      ),
    );
  }
}
