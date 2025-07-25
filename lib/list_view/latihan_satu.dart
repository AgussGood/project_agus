import 'package:flutter/material.dart';
import 'detail_player_screen.dart'; // IMPORT FILE TERPISAH

class PlayerSatu extends StatelessWidget {
  final List<Map<String, dynamic>> players = [
    {
      "nama": "Erling Haaland",
      "nomor": 9,
      "gender": "Laki-laki",
      "image": "images/haaland.jpg",
      "gol": 52,
      "liga": "Premier League",
      "bio":
          "Striker Norwegia bertubuh besar, cepat, dan mematikan di depan gawang.",
      "zodiac": "Cancer",
    },
    {
      "nama": "Kevin De Bruyne",
      "nomor": 17,
      "gender": "Laki-laki",
      "image": "images/debruyne.jpg",
      "gol": 18,
      "liga": "Premier League",
      "bio": "Gelandang kreatif asal Belgia, dikenal dengan visi dan umpannya.",
      "zodiac": "Cancer",
    },
    {
      "nama": "Phil Foden",
      "nomor": 47,
      "gender": "Laki-laki",
      "image": "images/foden.jpg",
      "gol": 15,
      "liga": "Premier League",
      "bio": "Wonderkid Inggris yang punya dribble dan finishing luar biasa.",
      "zodiac": "Gemini",
    },
    {
      "nama": "Bernardo Silva",
      "nomor": 20,
      "gender": "Laki-laki",
      "image": "images/bernardo.jpg",
      "gol": 10,
      "liga": "Premier League",
      "bio": "Playmaker asal Portugal yang lincah dan pekerja keras.",
      "zodiac": "Leo",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 15),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                CircleAvatar( 
                  backgroundImage: AssetImage(player['image']),
                  radius: 25,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '${player['nama']} (#${player['nomor']})',
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => PlayerDetailScreen(player: player),
                      ),
                    );
                  },
                  child: const Text("Detail"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
