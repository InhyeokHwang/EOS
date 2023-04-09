import 'package:eos_clock/view/login_screen.dart';
import 'package:eos_clock/widget/clock_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _auth = FirebaseAuth.instance;
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        title: Text('EOS 시계 앱'),
        leading: Icon(Icons.access_time_filled),
        actions: [
          IconButton(onPressed: (){
            _auth.signOut();
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          }, icon: Icon(Icons.exit_to_app_rounded, color: Colors.white))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(
                ),
                Image.asset("assets/images/eos_logo.png", width: 280, height: 280),
                ClockWidget(

                ),
                Spacer(
                ),
              ]
          )
        )
      )
    );
  }
}
