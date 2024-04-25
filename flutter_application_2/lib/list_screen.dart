import 'package:flutter/material.dart';
import 'package:flutter_application_2/NilaiAkhir.dart';
import 'package:flutter_application_2/kalkulator_screen.dart';
import 'package:flutter_application_2/new_screen.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Screen"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => KalkulatorScreen(),
                  ),
                );
              },
              child: Text('Kalkulator')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NewScreen(),
                  ),
                );
              },
              child: Text('Gambar Animal')),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NilaiAkhir(),
                  ),
                );
              },
              child: Text('Nilai Akhir')),
        ],
      ),
    );
  }
}