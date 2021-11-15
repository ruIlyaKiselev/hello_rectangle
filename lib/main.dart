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

  List<Category> _categoryList = [
    Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.access_alarm_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.home, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.search, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.add_alarm, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.ac_unit, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.thirty_fps_select_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.three_p_outlined, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.sixty_fps_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.add, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.access_alarm_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.home, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.search, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.add_alarm, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.ac_unit, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.thirty_fps_select_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.three_p_outlined, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(Icon(Icons.sixty_fps_sharp, size: 40), Text("aaaaa", style: TextStyle(fontSize: 40),)),
  ];

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
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index ) => _categoryList[index],
                    itemCount: _categoryList.length,
                  )
              )
          )
      )
  );
}

