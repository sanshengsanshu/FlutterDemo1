

import 'package:flutter/material.dart';
import 'package:cocoa/home6.dart';
import 'package:cocoa/home7.dart';
import 'package:cocoa/home8.dart';
import 'package:cocoa/home9.dart';

final routes = {
  '/home6': (context) => HomePage6(),
  '/home7': (context, {arguments}) => HomePage7(arguments: arguments),
  '/home8': (context) => HomePage8(),
  '/home9': (context) => HomePage9()
};

//固定写法
var onGenerateRoute = (RouteSettings settings) {
  // 统一处理
  final String name = settings.name;
  final Function pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};
