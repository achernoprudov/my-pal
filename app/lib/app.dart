import 'package:feature_record_list/record_list.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My pal',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const RecordListPage(),
    );
  }
}
