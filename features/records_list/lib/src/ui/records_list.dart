import 'package:core/core.dart';
import 'package:flutter/material.dart';

class RecordsList extends StatelessWidget {
  final List<Record> records;

  const RecordsList({Key? key, required this.records}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return ListTile(
          key: ValueKey(record.id),
          title: Text('Mood at $index index: ${record.mood}, id = ${record.id}'),
          subtitle: Text('Date ${record.date}'),
          leading: const Text('😶'),
        );
      },
    );
  }
}
