import 'package:flutter/material.dart';
class ScreenArguments {
  final String message;

  ScreenArguments( this.message);
}
class NotePage extends StatelessWidget{
  const NotePage({super.key});
  static const routeName='/firstScreen';

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
              onPressed: null,
              icon:Icon(Icons.anchor),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.doorbell_outlined),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(Icons.cloud_download_rounded),
          ),
        ],
      ),
      body: Padding(
        padding:EdgeInsets.fromLTRB(0, 20, 0, 10),
        child: Column(
              children: [
                SizedBox(
                  width: 360,
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Tiêu Đề"
                    ),
                  ),
                ),
                SizedBox(
                  width: 360,
                  height: 300,
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nội dung",
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 250,
                      height: 100,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context,"?áđá"),
                        child: Text("Save"),
                      ),
                    )
                  ],
                )
              ],
            ),
      )

    );
  }

}