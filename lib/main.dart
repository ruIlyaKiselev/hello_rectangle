import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

class HelloRectangle extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.redAccent,
        height: 400,
        width: 300,
        padding: const EdgeInsets.all(20),
        child: const Center(
          child: Text(
            "AAAAAAAAAAAAAAA",
            style: TextStyle(
                fontSize: 40
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
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
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                        Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
                      ],
                    )
                ),
              )
          )
      )
  );
}

