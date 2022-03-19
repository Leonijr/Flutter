import 'package:firstapp/task.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new TaskListApp());
}

class TaskListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new ScreenList());
  }
}

class ScreenList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ScreenListState();
  }
}

class ScreenListState extends State<ScreenList> {
  List<Task> tasks = <Task>[];
  TextEditingController controller = new TextEditingController();

  void addtasks(String nome) {
    setState(() {
      tasks.add(Task(nome));
    });

    controller.clear();
  }

  Widget getItem(Task task) {
    return new Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: new Icon(
            task.concluida ? Icons.check_box : Icons.check_box_outline_blank,
            color: Colors.green,
          ),
          iconSize: 42.0,
          padding: EdgeInsets.only(
            left: 10.0,
            right: 30.0,
          ),
          onPressed: () {
            setState(() {
              task.concluida = true;
            });
          },
        ),
        new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              task.nome,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Text(task.data.toIso8601String()),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Listagem de Tarefas"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(controller: controller, onSubmitted: addtasks),
          ),
          Expanded(
              child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (_, indice) {
              return getItem(tasks[indice]);
            },
          )),
        ],
      ),
    );
  }
}
