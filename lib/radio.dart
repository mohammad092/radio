import 'package:flutter/material.dart';

 class CustomRadio extends StatefulWidget {
  // هنا قمنا باضافة ال  المتغيرات
  final String text1;
  final String text2;
  // هنا قمنا بتمرير الباراميترز
  CustomRadio({Key key, @required  this.text1, @required this.text2}) : super(key:key);
@override
  _CustomRadioState createState() => _CustomRadioState();
}

 class _CustomRadioState extends State<CustomRadio> {
 int val;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          // هنا قمنا بتعريف الباراميتر الاول
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
          // وهنا الثاني
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