import 'package:crewin_ornek_proje/screens/home.dart';
import 'package:crewin_ornek_proje/screens/landing.dart';
import 'package:crewin_ornek_proje/screens/register/register_main.dart';
import 'package:crewin_ornek_proje/screens/register/register_name.dart';
import 'package:crewin_ornek_proje/screens/register/user_properties.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../service/firebase_options.dart';
import 'screens/register/age_user.dart';
import 'screens/register/gender_selection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => const LandingPage(),
            // When navigating to the "/second" route, build the SecondScreen widget.
            '/home': (context) => const HomePage(),
            '/register': (context) => const RegisterPage(),
            '/registerName': (context) => const RegisterName(),
            '/genderSelection': (context) => const GenderSelectionpage(),
            '/ageUser': (context) => const AgeUserPage(),
            '/userProperties': (context) => const UserProperties(),
          },
        );
      },
    );
  }
}
