import 'package:flutter/material.dart';
import 'package:flutter_application_2/list_screen.dart';
import 'kalkulator_screen.dart';
import 'list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.amber,
        title : Text('Beranda'),
      ),
      body: Column(
        children: [
          Text('selamat datang',
          style : TextStyle(
            color: const Color.fromARGB(255, 130, 0, 150),
            fontSize: 30.4),
            ),
          Text('budi',style : TextStyle(color: const Color.fromARGB(255, 130, 0, 150)),),
          Text('kelas ti22a2',style : TextStyle(color: const Color.fromARGB(255, 130, 0, 150)),),
        ],
      ),
    );
  }
}
