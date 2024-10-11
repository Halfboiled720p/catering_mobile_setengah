import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FoodApp(),
    );
  }
}

class FoodApp extends StatelessWidget {
  final FoodController controller = Get.put(FoodController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView( // Solusi 1: Tambahkan SingleChildScrollView agar konten bisa di-scroll
        child: Column(
          children: [
            // Search bar dengan ikon kaca pembesar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  controller.filterFoods(value);
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Search for food...',
                  prefixIcon: Icon(Icons.search), // Ikon kaca pembesar
                ),
              ),
            ),
            // GridView untuk menampilkan gambar-gambar makanan
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.7, // Batas tinggi konten
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Dua kolom
            childAspectRatio: 1, // Rasio aspek 1:1 untuk menghindari overflow
          ),
          itemCount: controller.foodNames.length, // Ubah itemCount ke panjang foodNames
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded( // Gunakan Expanded agar gambar tidak overflow
                    child: AspectRatio(
                      aspectRatio: 1, // Rasio aspek 1:1 untuk menjaga proporsi
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30), // Sesuaikan tingkat pembulatan
                        child: Image.asset(
                          controller.foodImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4), // Jarak antara gambar dan teks
                  Text(
                    controller.foodNames[index], // Tampilkan nama makanan
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          },
        ),
      ),
          ],
        ),
      ),
    );
  }
}

// Controller untuk mengelola state
class FoodController extends GetxController {
  // Daftar nama makanan
  final List<String> foodNames = [
    'Roti',
    'Kopi',
    'Bakime',
    'Breakfast',
    'Salad',
    'Nasi',
    'Ayam',
    'Bubur',
  ];

  // Daftar gambar makanan
  var foodImages = [
    'assets/images/roti.jpg',
    'assets/images/kopi.jpeg',
    'assets/images/mie_goreng.jpg',
    'assets/images/breakfast.jpg',
    'assets/images/salad.jpg',
    'assets/images/nasi_ayamgrg.jpeg',
    'assets/images/chicken.jpg',
    'assets/images/bubur.jpg',
  ];

  var selectedFood = 'Nasi goreng'.obs; // Reactive selected food
  var currentImage = 'assets/images/food_image_1.jpg'.obs; // Reactive current image

  // Inisialisasi filtered foods dengan semua nama makanan
  var filteredFoods = <String>[].obs;

  FoodController() {
    filteredFoods.assignAll(foodNames);
  }

  // Metode untuk memfilter makanan berdasarkan input pencarian
  void filterFoods(String query) {
    if (query.isEmpty) {
      filteredFoods.assignAll(foodNames);
    } else {
      filteredFoods.assignAll(foodNames.where((food) => food.toLowerCase().contains(query.toLowerCase())).toList());
    }
  }
}
