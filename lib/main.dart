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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'first App',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        fontFamily: 'Teko',
      ),
      home: HomeScreen()
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('에오스 시계 앱'),
        leading: Icon(Icons.access_alarm),
      ),
      body: Row( children: [
        TextButton(
          child: Text('hihi'),
          onPressed: () {},
        ),
        ElevatedButton(onPressed: () {}, child: Text('hihihi')),
        IconButton(onPressed: (){}, icon: Icon(Icons.access_time))
      ]),
      bottomNavigationBar: BottomAppBar(child: Text('hi')),
    );
  }
}


