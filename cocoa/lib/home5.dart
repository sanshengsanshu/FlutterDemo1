import 'dart:convert';
import 'dart:ffi';
import 'package:cocoa/home4.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class HomePage5 extends StatefulWidget {
  HomePage5({Key key}) : super(key: key);

  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  var _items = [];
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    getData();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print('滑到最底部了');
        _getMore();
      }
    });
  }

  void getData() async {
    try {
      Response response = await Dio().get(
          "http://api.juheapi.com/japi/toh?v=1.0&month=7&day=25&key=bd6e35a2691ae5bb8425c8631e475c2a");
      print(response);
      if (response != null) {
        final body = jsonDecode(response.toString());
        final data = body["result"];
        var items = [];
        data.forEach((item) {
          items.add(Model(item["title"], item["des"]));
        });
        setState(() {
          _items = items;
        });
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return layout(context);
  }

  Widget layout(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: RefreshIndicator(
          onRefresh: refresh,
          child: ListView.builder(
            itemCount: this._items.length + 1,
            itemBuilder: list,
            controller: _scrollController,
          ),
        ));
  }

  Widget buildAppBar() {
    return AppBar(title: Text("刷新加载"));
  }

  Widget list(BuildContext context, int index) {
    if (index < this._items.length) {
      Model model = this._items[index];
      return Column(
        children: <Widget>[
          Text('标题是：${model.title}'),
          Text('内容是：${model.desc}'),
        ],
      );
    }
    return _getMoreWidget();
  }

  Widget _getMoreWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[Text('加载中...')],
        ),
      ),
    );
  }

  Future<Null> refresh() {
    getData();
  }

  Future _getMore() {
    getData();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }
}

class Model {
  String title;
  String desc;

  Model(this.title, this.desc);
}
