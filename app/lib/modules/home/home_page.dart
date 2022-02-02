import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

import 'records_list.dart';

class HomePage extends StatefulWidget {
  final RecordsDao dao;

  const HomePage({
    Key? key,
    required this.dao,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RecordDto> records = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _updateRecords();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Records list'),
      ),
      body: RecordsList(records: records),
      floatingActionButton: FloatingActionButton(
        onPressed: _addNewRecord,
        tooltip: 'Add record',
        child: const Icon(Icons.add),
      ),
    );
  }

  void _addNewRecord() async {
    const record = RecordDto(mood: 'good', date: 1);
    await widget.dao.insert(record);
    _updateRecords();
  }

  Future<void> _updateRecords() async {
    final records = await widget.dao.records();
    setState(() {
      this.records = records;
    });
  }
}
