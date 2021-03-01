import 'package:flutter/material.dart';
import 'package:tete/radio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('radio')
      ),
      body: Center(
        // هنا قمنا باستخدام الباراميترز
        child: CustomRadio(
          text1:'hello',
          text2: 'Seccond text',
        ),
      ),
    );
  }
}
