import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

import 'app.dart';

Future<void> main() async {
  final stack = DatabaseStack();
  // await stack.initialize();

  runApp(App(stack));
}
