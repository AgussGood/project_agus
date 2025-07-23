import 'package:flutter/material.dart';
import 'package:project_agus/container/dua.dart';
import 'package:project_agus/main_layout.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Container 3 ',
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 1000,
              height: 1500,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(24),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 10, spreadRadius: 4),
                ],
              ),
            ),
            Container(
              width: 480,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContainerDua()),
                    );
                  },
                  child: Text('Pindah ke Container 2'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
