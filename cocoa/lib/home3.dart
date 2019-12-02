import 'package:flutter/material.dart';

class HomePage3 extends StatelessWidget {
  const HomePage3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  isScrollable: true,
                  tabs: <Widget>[Tab(text: '热门'), Tab(text: '热搜')],
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一行'),
                ),
                ListTile(
                  title: Text('第二行'),
                )
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(
                  title: Text('第一行'),
                ),
                ListTile(
                  title: Text('第二行'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
