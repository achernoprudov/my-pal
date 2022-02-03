import 'package:core/core.dart';
import 'package:di/di.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:storage/storage.dart';

import 'records_list.dart';

class RecordListPage extends StatefulWidget {
  const RecordListPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RecordListPage> createState() => _RecordListPageState();
}

class _RecordListPageState extends State<RecordListPage> {
  late GetRecordsUseCase getRecordsUseCase;
  late AddRecordUseCase addRecordUseCase;

  List<Record> records = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecordsUseCase = ServiceLocator.get<GetRecordsUseCase>();
    addRecordUseCase = ServiceLocator.get<AddRecordUseCase>();

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
    await addRecordUseCase.addRecord(date: DateTime.now(), mood: 'ok');
    _updateRecords();
  }

  Future<void> _updateRecords() async {
    final records = await getRecordsUseCase.getRecords();
    setState(() {
      this.records = records;
    });
  }
}
