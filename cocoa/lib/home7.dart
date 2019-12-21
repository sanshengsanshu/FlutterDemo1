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
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.tune),
              onPressed: () {},
            )
          ],
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,  
          children: _buildGridCards(50)
        ));
  }
}

List<Card> _buildGridCards(int count) {
  List<Card> cards = List.generate(
    count,
    (int index) => Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 18.0 / 11.0,
          child: Image.asset('assets/diamond.png'),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text('Title'),
              SizedBox(height: 8.0),
              Text('Secondary Text'),
            ],
          ),
        ),
      ],
    )),
  );
  return cards;
}


