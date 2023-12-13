import 'package:flutter/material.dart';

class Garbage extends StatelessWidget{
  const Garbage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Thùng rác ")),
      ),
      body: Center(child: const Text("New Screen")),
    );
  }

}