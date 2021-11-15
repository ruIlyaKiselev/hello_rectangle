import 'package:flutter/material.dart';

class HelloRectangle extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Container(
      color: Colors.redAccent,
    );
  }
}

void main() {

  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.green,
                title: Text("Aaaaaaaa"),
              ),
              body: HelloRectangle()
          )
      )
  );
}

