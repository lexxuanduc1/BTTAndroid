import 'package:flutter/material.dart';

class Reminder extends StatelessWidget{
  const Reminder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Lời nhắc ")),
      ),
      body: Center(child: const Text("New Screen")),
    );
  }
  
}