import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FolderEk(),
  ));
}

class FolderEk extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              _buildInkWellBox("KELAS RPL 4", "33 siswa", context),
              SizedBox(height: 20),
              _buildInkWellBox("KELAS RPL 5", "28 siswa", context),
              SizedBox(height: 20),
              _buildInkWellBox("KELAS RPL 6", "30 siswa", context),
              SizedBox(height: 20),
              _buildInkWellBox("KELAS RPL 7", "25 siswa", context),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tombol Tambah ditekan');
        },
        tooltip: 'Tambah',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 41, 84, 58),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInkWellBox(String title, String subTitle, BuildContext context) {
    return InkWell(
      onTap: () {
        print("$title clicked");
      },
      child: Ink(
        width: double.infinity,
        height: 200,
        color: const Color.fromARGB(255, 41, 84, 58),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    subTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              child: PopupMenuButton<String>(
                onSelected: (String value) {
                  print("$value clicked");
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
