import 'package:diary/db/db_provider.dart';
import 'package:diary/page/diary_detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DiaryListPage extends StatelessWidget {
  const DiaryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diary'),
      ),
      body: Consumer<DatabaseProvider>(builder: (context, provider, child) {
        final diaries = provider.diaries;

        return ListView.builder(
          itemCount: diaries.length,
          itemBuilder: (context, index) {
            final diary = diaries[index];
            return Dismissible(
              key: Key(diary.id.toString()),
              background: Container(color: Colors.red),
              onDismissed: (direction) {
                provider.deleteDiary(diary.id!);
              },
              child: Card(
                child: ListTile(
                    title: Text(diary.title),
                    subtitle: Text(DateFormat.MMMd().format(DateTime.now())),
                    onTap: () async {}),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => DiaryDetailPage()));
        },
      ),
    );
  }
}
