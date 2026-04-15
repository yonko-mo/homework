import 'package:flutter/material.dart';

class TaskTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAddTask;

  const TaskTextFieldWidget({
    super.key,
    required this.controller,
    required this.onAddTask,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.transparent,
        boxShadow: [
          BoxShadow(
            blurRadius: 8.0,
            color: Colors.black.withValues(alpha: 0.06),
            offset: const Offset(0, -2),
          ),
          const BoxShadow(color: Colors.white, offset: Offset(0, 0)),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xffedf3f1),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Add a new task...',
                hintStyle: TextStyle(color: Color(0xff434947), fontSize: 16),
              ),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xffdde3e1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            onPressed: onAddTask,
            icon: const Icon(Icons.add, color: Color(0xff919795), size: 28),
          ),
        ],
      ),
    );
  }
}
