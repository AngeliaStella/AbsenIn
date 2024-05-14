import 'package:absenin/profil_screen.dart';
import 'package:flutter/material.dart';
import 'package:absenin/bottom_navigation_bar.dart';
import 'package:absenin/absensi_screen.dart';

class editakun extends StatelessWidget {
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfilScreen(),
                ),
              );
              // Tindakan saat tombol centang ditekan
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
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 41, 84, 58),
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.edit, color: Colors.white, size: 20),
                        onPressed: () {
                          // Aksi yang dilakukan ketika tombol edit ditekan
                          // Misalnya, tampilkan dialog untuk mengubah foto profil
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Ubah Foto Profil"),
                                content:
                                    Text("Aksi untuk mengubah foto profil"),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text("Tutup"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Username',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Username',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Password',
                    style: TextStyle(fontSize: 16),
                  ),
                  TextFormField(
                    obscureText: true, // Menyembunyikan teks yang dimasukkan
                    decoration: InputDecoration(
                      hintText: 'Masukkan Password',
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 41, 84, 58)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfilScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'SAVE',
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
                builder: (context) => AbsensiScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
