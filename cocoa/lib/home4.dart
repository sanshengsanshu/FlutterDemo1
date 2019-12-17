import 'package:flutter/material.dart';
import 'Net/httpApi.dart';
import 'dart:convert';

class HomePage4 extends StatefulWidget {
  HomePage4({Key key}) : super(key: key);

  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  var _items = [];

  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() {
    Map<String, String> map = new Map();
    map["v"] = "1.0";
    map["month"] = "7";
    map["day"] = "25";
    map["key"] = "bd6e35a2691ae5bb8425c8631e475c2a";
    HttpApi.post("http://api.juheapi.com/japi/toh", (data) {
      if (data != null) {
        final body = jsonDecode(data.toString());
        final feeds = body["result"];
        print(body);
        var items = [];
        feeds.forEach((item) {
          items.add(Model(item["_id"], item["title"], item["des"], item["year"],
              item["month"], item["day"]));
        });
        setState(() {
          _items = items;
        });
      }
    }, params: map);
  }

  Widget layout(BuildContext context) {
    return new Scaffold(
        appBar: buildAppBar(),
        body: new ListView.builder(
          itemCount: this._items.length,
          itemBuilder: list,
        ));
  }

  Widget list(BuildContext context, int index) {
    Model model = this._items[index];
    return Column(
      children: <Widget>[
        Text('标题是：${model.title}'),
        Text('内容是：${model.desc}'),
        Text('时间是：${model.year}年${model.month}月${model.day}日')
      ],
    );
  }

  Widget buildAppBar() {
    return new AppBar(title: Text('新闻'));
  }
}

class Model {
  String _id;
  String title;
  String desc;
  int year;
  int month;
  int day;

  Model(this._id, this.title, this.desc, this.year, this.month, this.day);
}
