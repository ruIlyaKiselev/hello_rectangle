import 'package:backdrop/app_bar.dart';
import 'package:backdrop/button.dart';
import 'package:backdrop/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

import 'details.dart';

class HelloRectangle extends StatefulWidget {

  List<Category> categoryList;
  int selectedIndex = 0;

  HelloRectangle({Key? key, required this.categoryList}) : super(key: key);

  @override
  State createState() => _HelloRectangleState();
}

class _HelloRectangleState extends State<HelloRectangle>{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BackdropScaffold(
          appBar: BackdropAppBar(
              backgroundColor: Colors.green,
              title: const Text("Aaaaaaaa"),
              actions: const <Widget>[
                BackdropToggleButton(
                  icon: AnimatedIcons.list_view,
                )
              ]
          ),
          stickyFrontLayer: true,
          backLayer: OrientationBuilder(
              builder: (context, orientation) {
                if (orientation == Orientation.portrait) {
                  return ListView.builder(
                    itemBuilder: (BuildContext context, int index) => GestureDetector(
                        child: widget.categoryList[index],
                        onTap: () => {
                            
                        },
                    ),
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
          ),
          frontLayer: DetailsWidget(widget.categoryList[widget.selectedIndex]),
        )
    );
  }
}

void main() {

  List<Category> _categoryList = [
    Category(icon: Icon(Icons.add, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.access_alarm_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.home, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.search, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.add_alarm, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.ac_unit, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.thirty_fps_select_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.three_p_outlined, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.sixty_fps_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.add, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.access_alarm_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.home, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.search, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.add_alarm, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.ac_unit, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.thirty_fps_select_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.three_p_outlined, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
    Category(icon: Icon(Icons.sixty_fps_sharp, size: 40), text: Text("aaaaa", style: TextStyle(fontSize: 40))),
  ];

  runApp(HelloRectangle(categoryList: _categoryList));
  // runApp(HomeScreen());
}

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BackdropScaffold(
          appBar: BackdropAppBar(
            title: Text("Backdrop Example"),
            actions: const <Widget>[
              BackdropToggleButton(
                icon: AnimatedIcons.list_view,
              )
            ],
          ),
          backLayer: const Center(
            child: Text("Back Layer"),
          ),
          frontLayer: const Center(
            child: Text("Front Layer"),
          ),
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

