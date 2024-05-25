import 'package:absenin/signup.dart';
import 'package:flutter/material.dart';
import 'package:absenin/bottom_navigation_bar.dart';
import 'package:absenin/menubulan.dart';
import 'package:absenin/menukelas.dart';
import 'package:absenin/login.dart';
import 'package:absenin/edit_akun.dart';

class ProfilScreen extends StatelessWidget {
  final List<String> names = ["Angelia Stella Medita"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 84, 58),
        title: const Text(
          "Profile Akun",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            // Mengatur warna teks menjadi putih
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => editakun()),
              );

              // Fungsi yang akan dijalankan ketika tombol pengaturan ditekan
              // Tambahkan logika di sini untuk menangani ketika tombol ditekan
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Center(
                child: Container(
                  width: 140, // Lebar dan tinggi kontainer foto profil
                  height: 140,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                          'asset/image/lisab.jpg'), // Pastikan path ke gambar benar.
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Nama Pengguna',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                ' stella mpengharum ruangan',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.grey, // Mengatur warna garis menjadi abu-abu
                thickness: 1, // Mengatur ketebalan garis
              ),
              SizedBox(height: 5),
              Text(
                'Email',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                'iyadeh@gmail.com',
                style: TextStyle(fontSize: 14),
              ),
              SizedBox(height: 5),
              Divider(
                color: Colors.grey, // Mengatur warna garis menjadi abu-abu
                thickness: 1, // Mengatur ketebalan garis
              ),
              SizedBox(height: 5),
              Text(
                'Password',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              Text(
                '12212121', // Password disamarkan
                style: TextStyle(fontSize: 14),
              ),
              // SizedBox(height: 20),
              // ElevatedButton(
              //   onPressed: () {
              //     // Tambahkan logika untuk mengedit profil
              //   },
              //   child: Text('Edit Profil'),
              // ),

              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bulan(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 41, 84, 58),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 2,
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          } else if (index == 1) {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => kelas(),
              ),
            );
          }
        },
      ),
    );
  }
}
