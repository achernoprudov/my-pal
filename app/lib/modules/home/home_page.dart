import 'package:flutter/material.dart';
import 'package:my_pal/modules/home/records_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records list'),
      ),
      body: const RecordsList(),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewRecord,
        tooltip: 'Add record',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addNewRecord() {}
}
