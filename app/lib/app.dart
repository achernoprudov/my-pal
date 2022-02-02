import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

import 'modules/home/home_page.dart';

class App extends StatelessWidget {
  final DatabaseStack stack;

  const App(this.stack, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    stack.initialize();

    return MaterialApp(
      title: 'My pal',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomePage(
        dao: RecordsDao(stack),
      ),
    );
  }
}
