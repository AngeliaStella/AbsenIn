import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FolderEk(),
  ));
}

class FolderEk extends StatelessWidget {
  final List<String> bulan = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 84, 58),
        title: const Text(
          "ABSENIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: bulan.length, // Tambahkan itemCount
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.folder,
                  size: 140.0,
                  color: Color(0xFF29543A),
                ),
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
              ],
            ),
          );
        },
      ),
    );
  }
}
