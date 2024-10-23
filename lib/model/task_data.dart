import 'package:flutter/material.dart';

// Pastikan Task class ada dan didefinisikan di tempat lain seperti di task.dart
class Task {
  String name;
  bool isDone;

  Task({required this.name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

class TaskData extends ChangeNotifier {
  // List untuk menyimpan task
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  // Method untuk mendapatkan semua task
  List<Task> get tasks {
    return _tasks;
  }

  // Method untuk menambah task baru
  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners(); // Notifikasi listener ketika task ditambah
  }

  // Method untuk memperbarui status task (misalnya, task selesai atau tidak)
  void updateTask(Task task) {
    task.toggleDone(); // Toggle status selesai dari task
    notifyListeners(); // Notifikasi listener ketika task diupdate
  }

  // Method untuk menghapus task
  void deleteTask(Task task) {
    _tasks.remove(task); // Menghapus task dari list
    notifyListeners(); // Notifikasi listener ketika task dihapus
  }
}
