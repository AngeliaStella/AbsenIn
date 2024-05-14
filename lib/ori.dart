import 'package:flutter/material.dart';

void main() {
  runApp(AbsenApp());
}

class AbsenApp extends StatelessWidget {
  const AbsenApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 84, 58),
        title: const Text(
          "Folder Bulan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            // Mengatur warna teks menjadi putih
          ),
        ),
      ),
      
    );
  }
}
