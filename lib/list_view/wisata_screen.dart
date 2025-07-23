import 'package:flutter/material.dart';
import 'package:project_agus/list_view/detail_wisata.dart';
import 'package:project_agus/main_layout.dart';

class WisataScreen extends StatelessWidget {
  WisataScreen({super.key});

  //data
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "ubud",
      "kota": "bali",
      "image": "images/ubud.jpg",
      "desc": "Ubud Adalah Salah satu pantai di bali ...",
    },
    {
      "nama": "pangandaran",
      "kota": "pangandaran",
      "image": "images/pangandaran.jpg",
      "desc": "pangandaran Adalah Salah satu pantai di pangandaran ...",
    },
    {
      "nama": "karang papak",
      "kota": "garut",
      "image": "images/pantai.jpg",
      "desc": "karang papak Adalah Salah satu pantai di garut ...",
    },
    {
      "nama": "rinjani",
      "kota": "lombok",
      "image": "images/rinjani.jpg",
      "desc": "rinjani Adalah Salah Satu Gunung di lombok ...",
    },
    {
      "nama": "raja ampat",
      "kota": "papua",
      "image": "images/raja_ampat.jpg",
      "desc": "raja ampat Adalah pulau di papua ...",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.red, Colors.orangeAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: ListView.builder(
          itemCount: wisataData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailWisataScreen(
                      nama: wisataData[index]["nama"],
                      kota: wisataData[index]["kota"],
                      image: wisataData[index]["image"],
                      desc: wisataData[index]["desc"],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 250,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage("${wisataData[index]["image"]}"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, color: Colors.white)),
                ),
              ),
            );
          }),
    ));
  }
}

