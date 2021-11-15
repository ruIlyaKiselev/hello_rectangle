import 'package:flutter/material.dart';

class Category extends StatelessWidget {

  late Icon _icon;
  late Text _text;

  Category(Icon icon, Text text, {Key? key}) : super(key: key) {
    _icon = icon;
    _text = text;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.redAccent,
        ),
        child: Material(
          child: InkWell(
            onTap: () => {print("new event")},
            child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(16),
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: _icon,
                      ),
                      _text
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