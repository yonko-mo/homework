import 'package:flutter/material.dart';
import 'package:task_management_app/models/task_managment.dart';
import 'package:task_management_app/widgets/task_widget.dart';

class TasksListViewWidget extends StatefulWidget {
  final TaskManagment taskManagment;
  final void Function() updateTasks;

  const TasksListViewWidget({
    super.key,
    required this.taskManagment,
    required this.updateTasks,
  });

  @override
  State<TasksListViewWidget> createState() => _TasksListViewWidgetState();
}

class _TasksListViewWidgetState extends State<TasksListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.taskManagment.tasksCount,
      itemBuilder: (context, index) {
        return TaskWidget(
          task: widget.taskManagment.tasks[index],
          tasks: widget.taskManagment.tasks,
          onDelete: () {
            widget.taskManagment.removeTask(widget.taskManagment.tasks[index]);
            if (widget.taskManagment.isEmpty) {
              widget.updateTasks();
            } else {
              setState(() {});
            }
          },
        );
      },
    );
  }
}
