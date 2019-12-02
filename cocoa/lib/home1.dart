import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("我是home1"),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  print('search');
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print('setting');
                },
              )
            ],
            bottom: TabBar(
              tabs: <Widget>[Tab(text: '热门'), Tab(text: '推荐')],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第一页,第一条'),
                  ),
                  ListTile(
                    title: Text('第一页,第二条'),
                  ),
                  ListTile(
                    title: Text('第一页,第三条'),
                  )
                ],
              ),
              ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('第二页,第一条'),
                  ),
                  ListTile(
                    title: Text('第二页,第二条'),
                  ),
                  ListTile(
                    title: Text('第二页,第三条'),
                  )
                ],
              )
            ],
          )
          ),
    );
  }
}
