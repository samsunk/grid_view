import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  final _title = 'Grid view example';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(100, (index) {
            return Center(
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border.all(width: 10, color: Colors.black),
                ),
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
