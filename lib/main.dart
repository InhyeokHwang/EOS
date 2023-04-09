import 'dart:js';

import 'package:eos_clock/config/color_service.dart';
import 'package:eos_clock/view/home_screen.dart';
import 'package:eos_clock/view/login_screen.dart';
import 'package:eos_clock/view/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: ColorService.createMaterialColor(Color(0xFF1CAF49))),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/signup': (context) => SignUpScreen(),
      }
    ),
  );
}



