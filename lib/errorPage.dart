import 'package:flutter/material.dart';

class Errorpage extends StatefulWidget {
  const Errorpage({super.key});

  @override
  State<Errorpage> createState() => _ErrorpageState();
}

class _ErrorpageState extends State<Errorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("404 Not Found Page"),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Aranan Sayfa Bulunamadı !!!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
  }
}
