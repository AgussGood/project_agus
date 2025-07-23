import 'package:flutter/material.dart';
import 'package:project_agus/container/dua.dart';
import 'package:project_agus/container/satu.dart';
import 'package:project_agus/container/tiga.dart';
import 'package:project_agus/list_view/contoh_dua.dart';
import 'package:project_agus/list_view/contoh_empat.dart';
import 'package:project_agus/list_view/contoh_satu.dart';
import 'package:project_agus/list_view/contoh_tiga.dart';
import 'package:project_agus/list_view/wisata_screen.dart';
import 'package:project_agus/row_collum/column_satu.dart';
import 'package:project_agus/row_collum/latihan.dart';
import 'package:project_agus/row_collum/row_column.dart';
import 'package:project_agus/row_collum/row_satu.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WisataScreen());
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Hello Flutter',
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
