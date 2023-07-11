// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';


import 'home.dart';
// ignore: unused_import
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }


  _navigatetohome()async{
    await Future.delayed( Duration(milliseconds: 4500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage(title: 'Next Screen',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.cyan,
            ),
            Container(
              child: Text(
                'Splash Screen',
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
