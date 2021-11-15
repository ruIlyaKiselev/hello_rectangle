import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hello rectangle"),
        ),
        body: HelloRectangleBody(),
      ),
    )
  );
}

class HelloRectangleBody extends StatelessWidget {
  const HelloRectangleBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.greenAccent,
        height: 400,
        width: 300,
        child: Center(
          child: Text(
            "Hello!"
          ),
        ),
      ),
    )
  }
}

