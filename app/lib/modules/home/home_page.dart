import 'package:di/di.dart';
import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

import 'records_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late RecordsDao recordsDao;

  List<RecordDto> records = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    recordsDao = ServiceLocator.get<RecordsDao>();

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
    await recordsDao.insert(record);
    _updateRecords();
  }

  Future<void> _updateRecords() async {
    final records = await recordsDao.records();
    setState(() {
      this.records = records;
    });
  }
}
