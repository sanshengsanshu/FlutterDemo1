import 'package:flutter/material.dart';
import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';
import 'home5.dart';
import 'Routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      // initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('点击我跳转home1'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return HomePage1();
                }));
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home2'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => HomePage2(
                          titles: '我是传过去的标题home2',
                        )));
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home3'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage3()));
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home4'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage4()));
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home5'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage5()));
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home6'),
              onPressed: () {
                Navigator.pushNamed(context, '/home6');
              },
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
