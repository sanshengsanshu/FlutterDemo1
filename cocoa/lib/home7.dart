import 'package:flutter/material.dart';

class HomePage7 extends StatefulWidget {
  HomePage7({Key key, this.arguments}) : super(key: key);
  final Map arguments;

  @override
  _HomePage7State createState() => _HomePage7State();
}

class _HomePage7State extends State<HomePage7> {
Map arguments;
@override
void initState() { 
  super.initState();
  arguments = widget.arguments;
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home7 id ${arguments}'),
      ),
      body: Container(
        child: Text('content'),
      ),
    );
  }
}
