import 'package:absenin/menukelas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tambah());
}

class tambah extends StatelessWidget {
  const tambah({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 41, 84, 58),
        // title: const Text(
        //   "ABSENIN",
        //   style: TextStyle(
        //     color: Colors.white,
        //     fontSize: 24.0,
        //   ),
        // ),
        //   centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'PERTEMUAN',
              style: TextStyle(fontSize: 16),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Masukkan Pertemuan',
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
              'Tanggal Pertemuan',
              style: TextStyle(fontSize: 16),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Masukkan Tanggal Pertemuan',
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
            ElevatedButton(
              onPressed: () {
                // Navigate to the signup page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kelas()),
                );
              },
              child: Text(
                'Save',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255), // White text color
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  Color.fromARGB(255, 41, 84, 58),
                ), // White background color
                side: MaterialStateProperty.all(
                  BorderSide(
                    color:
                        Color.fromARGB(255, 41, 84, 58), // Green border color
                    width: 2.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
