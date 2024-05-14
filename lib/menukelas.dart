import 'package:absenin/tambah_kelas.dart';
import 'package:flutter/material.dart';

import 'package:absenin/datasiswa.dart';

void main() {
  runApp(kelas());
}

class kelas extends StatelessWidget {
  const kelas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 41, 84, 58),
          title: const Text(
            "ABSENIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              // Mengatur warna teks menjadi putih
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20), // Mengatur ukuran padding
          child: Column(
            children: [
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  // Aksi ketika container ditekan
                  print("Container clicked");
                },
                child: Ink(
                  width: double.infinity,
                  height: 200,
                  color: const Color.fromARGB(255, 41, 84, 58),
                  child: Stack(
                    // Menggunakan Stack untuk menempatkan menu di atas
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Alignment horizontal ke kiri
                          children: [
                            Text(
                              "KELAS RPL 4",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8), // Jarak antara teks
                            Text(
                              "33 siswa",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        // Menempatkan PopupMenuButton di kanan atas
                        right: 0,
                        child: PopupMenuButton<String>(
                          onSelected: (String value) {
                            // Aksi berdasarkan item yang dipilih
                            print("$value clicked");
                            // Contoh: if (value == 'Edit') { ... }
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'Edit',
                              child: Text('Edit'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Delete',
                              child: Text('Hapus'),
                            ),
                          ],
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ), // Ikon titik tiga
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => siswa()),
                  );
                },
                child: Ink(
                  width: double.infinity,
                  height: 200,
                  color: const Color.fromARGB(255, 41, 84, 58),
                  child: Stack(
                    // Menggunakan Stack untuk menempatkan menu di atas
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Alignment horizontal ke kiri
                          children: [
                            Text(
                              "KELAS MM 5 ",
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 8), // Jarak antara teks
                            Text(
                              "32 siswa",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        // Menempatkan PopupMenuButton di kanan atas
                        right: 0,
                        child: PopupMenuButton<String>(
                          onSelected: (String value) {
                            // Aksi berdasarkan item yang dipilih
                            print("$value clicked");
                            // Contoh: if (value == 'Edit') { ... }
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                            const PopupMenuItem<String>(
                              value: 'Edit',
                              child: Text('Edit'),
                            ),
                            const PopupMenuItem<String>(
                              value: 'Delete',
                              child: Text('Hapus'),
                            ),
                          ],
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ), // Ikon titik tiga
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => tambah()),
            );
          },
          tooltip: 'Tambah',
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(
              255, 41, 84, 58), // Menyesuaikan warna latar belakang
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          ),
        ),
      ),
    );
  }
}
