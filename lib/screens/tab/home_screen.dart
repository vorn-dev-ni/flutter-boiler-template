import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:   SafeArea(
        child:  Center(
          child: const Text("Welcome to home",style: TextStyle(
            color: Colors.white
          ),),
        ),
      ),
    );
  }
}
