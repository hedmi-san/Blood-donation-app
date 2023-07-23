import './Screens/booking_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, WidgetBuilder> routeController() {
    var results = {
      BookingScreen.id: (context) => const BookingScreen(),
    };
    return results;
  }
}
