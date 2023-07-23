import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:givealife/Screens/auth_screen.dart';
import 'package:givealife/Screens/sign_in_screen.dart';
import 'package:givealife/main_wrapper.dart';
import 'Screens/intro screns/first_intro.dart';
import './routes.dart';
import './utils/app_theme.dart';
import 'firebase_options.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  NotificationSettings settings = await messaging.requestPermission(
  alert: true,
  announcement: false,
  badge: true,
  carPlay: false,
  criticalAlert: false,
  provisional: false,
  sound: true,
);
print('User granted permission: ${settings.authorizationStatus}');
FirebaseMessaging.onMessage.listen((RemoteMessage message) {
  print('Got a message whilst in the foreground!');
  print('Message data: ${message.data}');

  if (message.notification != null) {
    print('Message also contained a notification: ${message.notification}');
  }
});


  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: IntroScreen(),
      routes: Routes.routeController(),
    ),
  );
}

class GiveAlife extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Give A life',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
            borderRadius: BorderRadius.circular(25),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 190, 190, 190)),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
      home: IntroScreen(),
      routes: {
        'Login': (context) => AuthScreen(),
        'register': (context) => SignInScreen(),
        'home': (context) => MainWrapper(0)
      },
    );
  }
}
