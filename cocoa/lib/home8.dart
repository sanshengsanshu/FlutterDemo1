import 'package:flutter/material.dart';
import 'Colors/colors.dart';

class HomePage8 extends StatefulWidget {
  HomePage8({Key key}) : super(key: key);

  @override
  _HomePage8State createState() => _HomePage8State();
}

class _HomePage8State extends State<HomePage8> {
  final _usernameC = TextEditingController();
  final _passwordC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: <Widget>[
              SizedBox(height: 80),
              Column(
                children: <Widget>[
                  Image.asset('iconM.png'),
                  SizedBox(height: 16),
                  Text('标题')
                ],
              ),
              SizedBox(height: 120),
              AccentColorOverride(
                // color: kShrineBrown900,
                child: TextField(
                  controller: _usernameC,
                  decoration: InputDecoration(
                      // filled: true,
                      labelText: 'username'),
                ),
              ),
              SizedBox(height: 12),
              TextField(
                controller: _passwordC,
                decoration: InputDecoration(
                    // filled: true,
                    labelText: 'password'),
                obscureText: true,
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: Text('cancle'),
                    onPressed: () {
                      _usernameC.clear();
                      _passwordC.clear();
                    },
                  ),
                  RaisedButton(
                    child: Text('next'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    elevation: 8.0,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AccentColorOverride extends StatelessWidget {
  const AccentColorOverride({Key key, this.color, this.child})
      : super(key: key);

  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Theme(
      child: child,
      data: Theme.of(context).copyWith(accentColor: color),
    );
  }
}
