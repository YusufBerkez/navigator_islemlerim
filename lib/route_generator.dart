import 'package:flutter/material.dart';
import 'package:navigator_islemleri/blue_page.dart';
import 'package:navigator_islemleri/red_page.dart';
import 'package:navigator_islemleri/yellow_page.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => RedPage());

      case "/yellowPage":
        return MaterialPageRoute(builder: (context) => YellowPage());

      case "/bluePage":
        String name = settings.arguments as String;
        return MaterialPageRoute(builder: (context) => BluePage(ad: name));
    }
  }
}
