import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

class HelloRectangle extends StatefulWidget {

  List<Category> categoryList;

  HelloRectangle({Key? key, required this.categoryList}) : super(key: key);

  @override
  State createState() => _HelloRectangleState();
}

class _HelloRectangleState extends State<HelloRectangle>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text("Aaaaaaaa"),
            ),
            body: OrientationBuilder(
                builder: (context, orientation) {
                  if (orientation == Orientation.portrait) {
                    return ListView.builder(
                      itemBuilder: (BuildContext context, int index ) => widget.categoryList[index],
                      itemCount: widget.categoryList.length,
                    );
                  } else {
                    return GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 3.0,
                      children: widget.categoryList,
                    );
                  }
                }
            )
        )
    );
  }
}

void main() {

  List<Category> _categoryList = [
    Category(icon: Icon(Icons.add, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.access_alarm_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.home, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.search, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.add_alarm, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.ac_unit, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.thirty_fps_select_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.three_p_outlined, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.sixty_fps_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.add, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.access_alarm_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.home, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.search, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.add_alarm, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.ac_unit, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.thirty_fps_select_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.three_p_outlined, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
    Category(icon: Icon(Icons.sixty_fps_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40),)),
  ];

  runApp(HelloRectangle(categoryList: _categoryList));
}

class HomeScreen extends StatelessWidget {

  late List<Category> _categoryList = [];

  HomeScreen(List<Category> categoryList) {
    _categoryList = categoryList;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text("Aaaaaaaa"),
            ),
            body: OrientationBuilder(
                builder: (context, orientation) {
                  return buildCategoryWidget(orientation == Orientation.portrait , _categoryList);
                }
            )
        )
    );
  }
}

Widget buildCategoryWidget(bool portrait, List<Category> _categoryList) {
  if (portrait) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index ) => _categoryList[index],
      itemCount: _categoryList.length,
    );
  } else {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 3.0,
      children: _categoryList,
    );
  }
}

