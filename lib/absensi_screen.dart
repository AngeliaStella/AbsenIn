import 'package:flutter/material.dart';
import 'package:absenin/kamera_scan_screen.dart';
import 'package:absenin/profil_screen.dart';
import 'package:absenin/crud_students.dart';
import 'bottom_navigation_bar.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

// // ...

// await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
// );

class AbsensiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Absensi'),
      ),
      body: Center(
        // child: Text('Halaman Absensi'),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CrudStudents(),
            ));
          },
          child: Text('ABSENIN'),
        ),
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
