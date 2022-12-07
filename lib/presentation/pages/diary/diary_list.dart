import 'package:capstone_project/common/constant.dart';
import 'package:capstone_project/presentation/provider/db_provider.dart';
import 'package:capstone_project/presentation/pages/diary/diary_detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class DiaryListPage extends StatelessWidget {
  const DiaryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kSecondary,
        title: const Text(
          'MENTAL TEST',
          style: TextStyle(
            color: kWhite,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
              Icons.arrow_circle_left_outlined,
              color: kWhite),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
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
