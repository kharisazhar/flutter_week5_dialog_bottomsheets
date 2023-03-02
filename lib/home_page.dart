import 'package:flutter/material.dart';
import 'package:flutter_week5_dialog_bottomsheets/task_detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Task Management"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.person))
          ],
        ),
        body: Container(
          color: Colors.amber,
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (_) => const TaskDetailPage())),
        ));
  }
}
