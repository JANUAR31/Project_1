import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({Key? key}) : super(key: key);

  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  String? namaHewan;
  final player = AudioPlayer();

  gantiNama(String inputNama) {
    setState(() {
      namaHewan = inputNama;
    });
  }

  playAudio(String audioAsset) async {
    await player.setAsset(audioAsset);
    await player.play();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(namaHewan ?? "Gambar hewan dan suara"),
        backgroundColor: Color.fromARGB(255, 0, 110, 255),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildAnimalCard(
                    "Sapi", "aset_media/suara/COW.mp3", "aset_media/gambar/COW.jpg"),
                _buildAnimalCard(
                    "Harimau", "aset_media/suara/TIGER.mp3", "aset_media/gambar/LION.jpg"),
                _buildAnimalCard(
                    "Kuda", "aset_media/suara/HORSE.mp3", "aset_media/gambar/HORSE.jpg"),
                _buildAnimalCard(
                    "Domba", "aset_media/suara/SHEEP.mp3", "aset_media/gambar/SHEEP.jpg"),
              ],
            ),
            Container(
              height: size.height / 1,
              width: size.width,
              alignment: Alignment.center,
              child: _buildAnimalCard(
                "Serigala",
                "aset_media/suara/WOLF.mp3",
                "aset_media/gambar/WOLF.jpg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                namaHewan ?? "",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimalCard(
      String animalName, String audioAsset, String imageAsset) {
    return GestureDetector(
      onTap: () {
        gantiNama(animalName);
        playAudio(audioAsset);
      },
      child: Card(
        child: AspectRatio(
          aspectRatio: 0.5,
          child: Image.asset(
            imageAsset,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
