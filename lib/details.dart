
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_rectangle/category.dart';

class DetailsWidget extends StatelessWidget {

  late Category _category;

  DetailsWidget(Category category) {
    _category = category;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: [
                _category.text,
                TextButton(
                    onPressed: () => {
                      Navigator.pop(context)
                    },
                    child: _category.icon
                )
              ],
            ),
          ),
        )
    );
  }
}