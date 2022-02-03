import 'package:flutter/material.dart';
import 'package:records_list/records_list.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My pal',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const RecordListPage(),
    );
  }
}
