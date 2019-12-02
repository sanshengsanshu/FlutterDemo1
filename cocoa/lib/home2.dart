import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {

  final String titles;
  const HomePage2({Key key, this.titles='默认home2'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.titles),
      ),
    );
  }
}