import 'package:eos_chatting/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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


