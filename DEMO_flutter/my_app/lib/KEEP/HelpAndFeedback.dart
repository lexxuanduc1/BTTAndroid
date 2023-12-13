import 'package:flutter/material.dart';

class HelpAndFeedback extends StatelessWidget{
  const HelpAndFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Trợ giúp và phản hồi ")),
      ),
      body: Center(child: const Text("New Screen")),
    );
  }

}