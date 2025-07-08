import 'package:flutter/material.dart';
import 'package:navigator_islemleri/blue_page.dart';
import 'package:navigator_islemleri/errorPage.dart';
import 'package:navigator_islemleri/red_page.dart';
import 'package:navigator_islemleri/route_generator.dart';
import 'package:navigator_islemleri/yellow_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: {
      //   "/": (context) => RedPage(),
      //   "/yellowPage": (context) => YellowPage(),
      //   "/bluePage": (context) => BluePage(),
      // },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => Errorpage());
      },
      onGenerateRoute: RouteGenerator.routeGenerator,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: RedPage(),
    );
  }
}
