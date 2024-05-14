import 'package:absenin/menukelas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tambah());
}

class tambah extends StatelessWidget {
  const tambah({Key? key}) : super(key: key);

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
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nama Kelas',
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Nama Kelas',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 41, 84, 58),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 41, 84, 58),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10), // Menambahkan jarak antara dua widget
              Text(
                'Jumlah Siswa',
                style: TextStyle(fontSize: 16),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Masukkan Jumlah Siswa',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 41, 84, 58),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 41, 84, 58),
                    ),
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
              MaterialPageRoute(builder: (context) => kelas()),
            );
          },
          tooltip: 'Tambah',
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(
              255, 41, 84, 58), // Menyesuaikan warna latar belakang
        ),
      ),
    );
  }
}
