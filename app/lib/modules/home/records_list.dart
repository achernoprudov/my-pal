import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

class RecordsList extends StatelessWidget {
  final List<RecordDto> records;

  const RecordsList({Key? key, required this.records}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return ListTile(
          title: Text('Mood at $index index: ${record.mood}, id = ${record.id}'),
          leading: const Text('😶'),
        );
      },
    );
  }
}
