import 'package:diary/db/db_provider.dart';
import 'package:diary/model/diary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiaryDetailPage extends StatefulWidget {
  final Diary? diary;

  const DiaryDetailPage({super.key, this.diary});

  @override
  State<DiaryDetailPage> createState() => _DiaryDetailPageState();
}

class _DiaryDetailPageState extends State<DiaryDetailPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  bool _isUpdate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              labelText: 'Judul',
            ),
          ),
          TextField(
            controller: _descriptionController,
            decoration: const InputDecoration(
              labelText: 'Deskripsi',
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              child: const Text('Simpan'),
              onPressed: () async {
                if (!_isUpdate) {
                  final diary = Diary(
                      title: _titleController.text,
                      description: _descriptionController.text);
                  Provider.of<DatabaseProvider>(context, listen: false)
                      .addDiary(diary);
                } else {
                  final diary = Diary(
                      id: widget.diary!.id,
                      title: _titleController.text,
                      description: _descriptionController.text);
                  Provider.of<DatabaseProvider>(context, listen: false)
                      .updateDiary(diary);
                }
                Navigator.pop(context);
              },
            ),
          )
        ]),
      ),
    );
  }
}
