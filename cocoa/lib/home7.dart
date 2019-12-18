import 'package:flutter/material.dart';

class HomePage7 extends StatefulWidget {
  final Map arguments;
  HomePage7({Key key, this.arguments}) : super(key: key);

  @override
  _HomePage7State createState() => _HomePage7State(arguments: this.arguments);
}

class _HomePage7State extends State<HomePage7> {
  Map arguments;
  _HomePage7State({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home7 id ${this.arguments}'),
      ),
      body: Container(
        child: Text('content'),
      ),
    );
  }
}
