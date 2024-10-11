import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class menu_favorit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Menggunakan Get untuk navigasi kembali ke halaman sebelumnya
            Get.back(); // Menggunakan Get.back() untuk kembali
          },
        ),
        title: Text("Menu Favorit"),
      ),
      body: ListView(
        children: [
          _MenuCard(
            imageUrl: "assets/images/Nasi_Goreng.jpg", // Menggunakan gambar dari assets
            title: "Nasi Goreng Seafood",
            description: "Merupakan olahan nasi di goreng dan ada campuran seafood seperti udang yang menciptakan rasa mewah di dalamnya.",
          ),
          _MenuCard(
            imageUrl: "assets/images/soto_ayam.webp", // Menggunakan gambar dari assets
            title: "Soto Ayam",
            description: "Merupakan olahan campuran bihun, ayam, kol, toge yang dipadu dengan kuah soto yang kaldu, ditambah toping telur dan perasan jeruk nipis.",
          ),
        ],
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  _MenuCard({
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(imageUrl), // Memuat gambar dari assets
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(height: 4),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
