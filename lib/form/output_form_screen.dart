import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama;
  final String jk;
  final String tgllahir;
  final String agama;

  const OutputFormScreen({
    super.key,
    required this.nama,
    required this.jk,
    required this.tgllahir,
    required this.agama,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Output Formulir"),
        centerTitle: true,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(color: Colors.black),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Data Biodata",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Nama
                  _buildRow(Icons.person, "Nama", nama),
                  const SizedBox(height: 12),

                  // Jenis Kelamin
                  _buildRow(Icons.transgender, "Jenis Kelamin",
                      jk == 'L' ? "Laki-laki" : "Perempuan"),
                  const SizedBox(height: 12),

                  // Tanggal Lahir
                  _buildRow(Icons.calendar_today, "Tanggal Lahir", tgllahir),
                  const SizedBox(height: 12),

                  // Agama
                  _buildRow(Icons.account_balance, "Agama", agama),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRow(IconData icon, String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.red),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
