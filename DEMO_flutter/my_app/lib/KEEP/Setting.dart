import 'package:flutter/material.dart';

class Setting extends StatelessWidget{
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Cài đặt ")),
      ),
      body: Center(child: const Text("New Screen")),
    );
  }

}