import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Halaman2 extends StatelessWidget{
  const Halaman2({super.key});

  @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar :AppBar(
          title: Text('Halaman 2'),
          backgroundColor: Colors.blueAccent,
          ),
          body : Center(
            child: Column(
              children: [
                Text('Andi'),
                Text('belajar'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.thumb_up,size: 150,),
                    Icon(Icons.thumb_down,size: 150,),
                  ],
                )
              ],
            ),
            ),
          );
    }
}