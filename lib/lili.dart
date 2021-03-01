import 'package:flutter/material.dart';

class Coco extends StatefulWidget {
  final String text1;
  final String text2;
  Coco({Key key, @required  this.text1, @required this.text2}) : super(key:key);
@override
  _CocoState createState() => _CocoState();
}

class _CocoState extends State<Coco> {
 int val;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: Text(widget.text1),
          value: 1,
          groupValue: val,
          onChanged: (newV) {
            setState(() {
              val = newV;
            });
          },
        ),
        RadioListTile(
          title: Text(widget.text2),
          value: 2,
          groupValue: val,
          onChanged: (newV) {
            setState(() {
              val = newV;
            });
          },
        ),
      ],
    );
  }
}