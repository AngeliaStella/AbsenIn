import 'package:flutter/material.dart';

void main() {
  runApp(siswa());
}

class siswa extends StatefulWidget {
  siswa({Key? key}) : super(key: key);

  @override
  _siswaState createState() => _siswaState();
}

class _siswaState extends State<siswa> {
  List<String> names = [
    "Angelia Stella",
    "Ni Luh Putu Aria",
    "Wenjel",
  ];

  void deleteName(int index) {
    setState(() {
      names.removeAt(index);
    });
  }

  void addName(String newName) {
    setState(() {
      names.add(newName);
    });
  }

  void editName(int index, String editedName) {
    setState(() {
      names[index] = editedName;
    });
  }

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kehadiran Siswa Pertemuan 2",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 1,
                color: Colors.grey,
                margin: EdgeInsets.symmetric(horizontal: 4),
              ),
              SizedBox(height: 8),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: names.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(names[index]),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
