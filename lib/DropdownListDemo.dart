import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropdownListDemo extends StatefulWidget {
  const DropdownListDemo({Key? key}) : super(key: key);

  @override
  State<DropdownListDemo> createState() => _DropdownListDemoState();
}

class _DropdownListDemoState extends State<DropdownListDemo> {
  final dynamic items = ['Item 1','Item 2','Item 3'];
  String dropdownValue = 'Item 1';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: DropdownButton<String>(
            value: dropdownValue,
            items: items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            }),
      ),
    );
  }
}