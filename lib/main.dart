import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Pastikan provider diimpor
import 'package:praktikum_state_mngmnt_2023/screens/tasks_screen.dart'; // Impor sesuai dengan struktur proyekmu
import 'package:praktikum_state_mngmnt_2023/model/task_data.dart'; // Impor TaskData dari model

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(), // TaskData sebagai provider
      child: MaterialApp(
        debugShowCheckedModeBanner: false, // Hilangkan banner debug
        theme: ThemeData(
          primarySwatch: Colors.lightBlue, // Tema aplikasi
        ),
        home: TasksScreen(), // Tampilkan TasksScreen sebagai halaman utama
      ),
    );
  }
}
