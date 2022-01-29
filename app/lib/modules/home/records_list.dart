import 'package:flutter/material.dart';

class RecordsList extends StatelessWidget {
  const RecordsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Mood at $index index'),
          leading: Text('😶'),
        );
      },
    );
  }
}
