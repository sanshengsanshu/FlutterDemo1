import 'package:cocoa/Colors/colors.dart';
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
      theme: _kShrineThteme,
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
            ),
            RaisedButton(
              child: Text('点击我跳转home7'),
              onPressed: () {
                Navigator.pushNamed(context, '/home7');
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home8'),
              onPressed: () {
                Navigator.pushNamed(context, '/home8');
              },
            ),
            RaisedButton(
              child: Text('点击我跳转home9'),
              onPressed: () {
                Navigator.pushNamed(context, '/home9');
              },
            )
          ],
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

//自定义主题
final ThemeData _kShrineThteme = _buildShrineTheme();

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    accentColor: kShrineBrown900,
    primaryColor: kShrinePink100,
    buttonColor: kShrinePink100,
    scaffoldBackgroundColor: kShrineBackgroundWhite,
    cardColor: kShrineBackgroundWhite,
    textSelectionColor: kShrinePink100,
    errorColor: kShrineErrorRed,
    textTheme: _buildShrineTextTheme(base.textTheme),
    primaryTextTheme: _buildShrineTextTheme(base.primaryTextTheme),
    accentTextTheme: _buildShrineTextTheme(base.accentTextTheme),
    primaryIconTheme: base.iconTheme.copyWith(
      color: kShrineBrown900
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder()
    )
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        headline: base.headline.copyWith(
          fontWeight: FontWeight.w500,
        ),
        title: base.title.copyWith(fontSize: 18.0),
        caption: base.caption.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kShrineBrown900,
        bodyColor: kShrineBrown900,
      );
}
