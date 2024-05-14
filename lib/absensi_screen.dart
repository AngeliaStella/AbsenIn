import 'package:flutter/material.dart';
import 'package:absenin/kamera_scan_screen.dart';
import 'package:absenin/profil_screen.dart';
import 'package:absenin/crud_students.dart';
import 'package:absenin/menubulan.dart';
import 'package:absenin/menukelas.dart';
import 'bottom_navigation_bar.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// // ...

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );

class AbsensiScreen extends StatelessWidget {
  @override
  final List<String> kelas = ['Kelas A', 'Kelas B', 'Kelas C', 'Kelas D'];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Absensi'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Card(
              margin: EdgeInsets.all(
                  16.0), // Optional: to add some margin around the card
              color: Color.fromARGB(255, 41, 84, 58), // Green background color
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CrudStudents(),
                  ));
                },
                child: Container(
                  width: double.infinity,
                  height: 80.0,
                  alignment: Alignment.center,
                  child: Text(
                    'Manajemen Data Siswa',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white, // Text color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                childAspectRatio: 1.0, // Aspect ratio of each item
                crossAxisSpacing: 8, // Horizontal spacing between items
                mainAxisSpacing: 8, // Vertical spacing between items
              ),
              itemCount: kelas.length, // Total number of items
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    // Logic executed when the folder is tapped
                    String selectedClass = kelas[index];
                    print("Folder $selectedClass tapped!");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            Bulan(), // Navigate to the Bulan page
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
                          offset:
                              const Offset(0, 3), // Changes position of shadow
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
                        const SizedBox(
                            height: 8), // Space between folder icon and text
                        Text(
                          kelas[index],
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
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => KameraScanScreen()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilScreen()),
            );
          }
        },
      ),
    );
  }
}
