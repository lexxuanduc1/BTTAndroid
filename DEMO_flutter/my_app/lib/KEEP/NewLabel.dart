import 'package:flutter/material.dart';

class NewLabel extends StatelessWidget{
  const NewLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("tạo nhãn gián ")),
      ),
      body: Center(child: const Text("New Screen")),
    );
  }

}