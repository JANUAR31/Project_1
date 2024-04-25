import 'package:flutter/material.dart';

class KalkulatorScreen extends StatefulWidget {
  const KalkulatorScreen({super.key});

  @override
  State<KalkulatorScreen> createState() => _KalkulatorScreenState();
}

class _KalkulatorScreenState extends State<KalkulatorScreen> {
  TextEditingController angka1controler = TextEditingController();
  TextEditingController angka2controler = TextEditingController();
  int hasil = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalkulator'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          TextField(
            controller: angka1controler,
          ),
          TextField(
            controller: angka2controler,
          ),
          ElevatedButton(
            onPressed: () {
              print(angka1controler.text);
              setState(() {
                hasil = int.parse(angka1controler.text) +
                    int.parse(angka2controler.text);
              });
            },
            child: Text('tampil'),
          ),
          Text(hasil.toString()),
        ],
      ),
    );
  }
}