import 'package:flutter/material.dart';

class HomePage6 extends StatefulWidget {
  HomePage6({Key key}) : super(key: key);

  @override
  _HomePage6State createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home6'),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return cell(context);
        },
      ),
    );
  }
}

Widget cell(BuildContext context) {
  return InkWell(
    onTap: () {
      print('点击cell');
      Navigator.pushNamed(context,'/home7',arguments: {'id':"10"});
    },
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              color: Colors.yellow,
              width: 44,
              height: 44,
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text('标题'),
                      ),
                      Container(
                        child: Text('日期'),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[Text('描述')],
                  )
                ],
              ),
            )
          ],
        ),
        Divider(
          height: 1,
          color: Colors.black,
        )
      ],
    ),
  );
}
