import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/menupilihan_controller.dart';
import '../controllers/menupilihan_controller.dart'; // Import controller
import '../bindings/menupilihan_binding.dart'; // Import binding jika diperlukan

class menupilihan_view extends StatefulWidget {
  final String title;

  const menupilihan_view({Key? key, required this.title}) : super(key: key);

  @override
  _menupilihan_viewState createState() => _menupilihan_viewState();
}

class _menupilihan_viewState extends State<menupilihan_view> {
  final menupilihan_controller controller = Get.put(menupilihan_controller()); // Menggunakan Get.put untuk mendapatkan instance controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MENU PILIHAN',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.selectedMenu.value = 'Mahasiswa'; // Mengupdate state
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: Text('Mahasiswa'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.selectedMenu.value = 'Kantoran'; // Mengupdate state
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: Text('Kantoran'),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      controller.selectedMenu.value = 'Lainnya'; // Mengupdate state
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                    ),
                    child: Text('Lainnya'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _MenuItem(title: '1x Ayam 1x Sayuran'),
                  _MenuItem(title: 'Rp. 150.000 7 hari'),
                  _MenuItem(title: 'Rp. 200.000 15 hari'),
                  _MenuItem(title: 'Rp. 350.000 21 hari')
                  // Tambahkan item menu lainnya di sini
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String title;

  const _MenuItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(child: Text(title)),
    );
  }
}
