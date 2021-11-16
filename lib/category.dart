import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_rectangle/details.dart';

class Category extends StatefulWidget {

  late Icon icon;
  late Text text;
  Color color = Colors.greenAccent;

  Category({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: widget.color,
        ),
        child: Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(24),
            onTap: () => {
              print("new event"),
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //       builder: (context) => DetailsWidget(this)
              //   )
              // ),
              setState(() {
                widget.color = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
              })
            },
            child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(16),
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: widget.icon,
                      ),
                      widget.text
                    ]
                )
            ),
          ),
          color: Colors.transparent,
        ),
      ),
    );
  }
}

Widget categoryItem(BuildContext context, Icon icon, Text text) {

  Color _color = Colors.greenAccent;



  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: _color,
      ),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.circular(24),
          onTap: () => {
            print("new event"),
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //       builder: (context) => DetailsWidget(this)
            //   )
            // ),

          },
          child: Container(
              width: double.infinity,
              height: 100,
              padding: const EdgeInsets.all(16),
              child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: icon,
                    ),
                    text
                  ]
              )
          ),
        ),
        color: Colors.transparent,
      ),
    ),
  );
}
