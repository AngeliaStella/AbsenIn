import 'package:flutter/material.dart';

void main() {
  runApp(AbsenApp());
}

class AbsenApp extends StatefulWidget {
  AbsenApp({Key? key}) : super(key: key);

  @override
  _AbsenAppState createState() => _AbsenAppState();
}

// kont

class _AbsenAppState extends State<AbsenApp> {
  List<String> names = ["angeliastella@student.ac.id"]; // List contoh

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Akun Saya",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 1,
                  color: Colors.grey,
                  margin: EdgeInsets.symmetric(horizontal: 4),
                ),
                SizedBox(height: 15),
                // Menampilkan daftar nama
                Text(
                  "Nama: ${names.join(', ')}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Color.fromARGB(255, 41, 84, 58),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                IconButton(
                  onPressed: () {
                    // Tambahkan logika logout di sini
                    logout();
                  },
                  icon: Icon(Icons.logout),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void logout() {
    // Tambahkan logika logout di sini
    print('Logout berhasil');
    // Misalnya, Anda dapat menavigasi pengguna ke halaman login atau melakukan penghapusan token otentikasi, dll.
  }
}
