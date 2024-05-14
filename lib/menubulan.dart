import 'package:flutter/material.dart';
import 'package:absenin/menukelas.dart';
import '/bottom_navigation_bar.dart';
import '/absensi_screen.dart';

class Bulan extends StatelessWidget {
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
          "Scan Camera QR Code",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom
          childAspectRatio: 1.0, // Aspek rasio dari setiap item
          crossAxisSpacing: 8, // Jarak horizontal antara item
          mainAxisSpacing: 8, // Jarak vertikal antara item
        ),
        itemCount: bulan.length, // Jumlah total item
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Logika yang dijalankan saat folder ditekan
              String selectedMonth = bulan[index];
              print("Folder $selectedMonth ditekan!");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => kelas(), // Mengirim nama bulan ke halaman Kelas
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 6,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.folder,
                    size: 100.0,
                    color: Color.fromARGB(218, 41, 84, 58),
                  ),
                  const SizedBox(height: 8), // Spasi antara ikon folder dan teks
                  Text(
                    bulan[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AbsensiScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
