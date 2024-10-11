import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

const _mainColor = Color(0xFFECD7D7);

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _selectedColor = Color(0xFFECD7D7);
    final _unselectedColor = Colors.white;
    final _selectedBackgroundColor = Color(0xFFFF3131);
    final _unselectedBackgroundColor = Color(0xFFECD7D7);
    final _borderColor = Color(0xFFCDE7BE);

    return DefaultTabController(
      length: 3, // Number of Tabs
      child: Scaffold(
        backgroundColor: Color(0xFFECD7D7),
        appBar: AppBar(
          scrolledUnderElevation: 0,
          elevation: 0,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Image.asset(
                'assets/images/logo.png',
                height: 20,
              ),
            ),
          ),
          backgroundColor: Color(0xFFECD7D7),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  // Menampilkan drawer
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          ),
          actions: [
            GestureDetector(
              onTap: () {
                // Menavigasi ke halaman profil
                Get.toNamed('/profile');
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/1.png'),
              ),
            ),
            SizedBox(width: 16),
            IconButton(
              icon: Icon(Icons.favorite, color: Colors.red), // Ikon favorit
              onPressed: () {
                // Menavigasi ke halaman Menu Favorit
                Get.toNamed('/menu_favorit'); // Ganti dengan rute yang sesuai
              },
            ),
            SizedBox(width: 16),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(170),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: TabBar(
                          dividerColor: Colors.transparent,
                          isScrollable: true,
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: _selectedBackgroundColor,
                          ),
                          indicatorSize: TabBarIndicatorSize.label,
                          labelColor: _selectedColor,
                          unselectedLabelColor: Colors.black,
                          unselectedLabelStyle: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          tabAlignment: TabAlignment.start,
                          tabs: [
                            Tab(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.wb_twighlight, size: 18),
                                    SizedBox(width: 8),
                                    Flexible(
                                      child: Text(
                                        "Pagi",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.wb_sunny, size: 18),
                                    SizedBox(width: 8),
                                    Flexible(
                                      child: Text(
                                        "Siang",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(
                                    color: Colors.transparent,
                                    width: 1,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.nights_stay, size: 18),
                                    SizedBox(width: 8),
                                    Flexible(
                                      child: Text(
                                        "Malam",
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: () {
                          // Fungsi untuk tombol search
                          Get.toNamed('/SearchMenu');
                        },
                      ),
                      IconButton(
                          icon: Icon(Icons.menu, color: Colors.black),
                          onPressed: (){
                            Get.toNamed('/menupilihan_view');
                          },
                      ),
                    ],
                  ),
                ),
                // ListView horizontal dengan gambar
                Container(
                  height: 100, // Tentukan tinggi
                  margin: EdgeInsets.only(top: 12), // Margin top untuk spasi
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3, // Jumlah item
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          children: [
                            Container(
                              width: 192,
                              height: 96,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.greenAccent.withOpacity(0.2),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/Container1.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
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
        ),
        drawer: _drawer(),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                SizedBox(height: 20),
                Text(
                  "⭐ Populer",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    // Tambahkan padding di sini
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    // Padding horizontal
                    child: ListView(
                      children: [
                        foodItem(
                            'Salad Omlat',
                            'Pagi, Sehat',
                            '30%',
                            'Kode PAGI 123',
                            '20 min',
                            '50.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Ayam Ceos',
                            'Pagi, Enak',
                            '20%',
                            'Kode PAGI 342',
                            '15 min',
                            '50.000',
                            'assets/images/Container1.png'),
                        foodItem('Soto', 'Pagi, Enak', '35%', 'Kode PAGI 6969',
                            '10 min', '20.000', 'assets/images/Container1.png'),
                        foodItem(
                            'Roti',
                            'Pagi, Enak, Murah',
                            '10%',
                            'Kode PAGI 389',
                            '5 min',
                            '10.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Nasi Goreng',
                            'Siang, Pedas',
                            '15%',
                            'Kode SIANG 456',
                            '25 min',
                            '30.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Mie Ayam',
                            'Siang, Lezat',
                            '5%',
                            'Kode SIANG 678',
                            '12 min',
                            '25.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Kwetiau',
                            'Siang, Gurih',
                            '20%',
                            'Kode SIANG 789',
                            '10 min',
                            '35.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Tahu Tempe',
                            'Malam, Sehat',
                            '25%',
                            'Kode MALAM 321',
                            '15 min',
                            '15.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Sushi',
                            'Malam, Unik',
                            '10%',
                            'Kode MALAM 654',
                            '30 min',
                            '45.000',
                            'assets/images/Container1.png'),
                        foodItem(
                            'Pasta',
                            'Malam, Kenyang',
                            '5%',
                            'Kode MALAM 987',
                            '20 min',
                            '40.000',
                            'assets/images/Container1.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            // Tambahkan aksi saat FAB ditekan
            Get.toNamed('/tambah');
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Widget foodItem(
      String name,
      String desc,
      String promo,
      String code,
      String duration,
      String price,
      String image) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(desc),
                SizedBox(height: 5),
                Text(
                  promo,
                  style: TextStyle(color: Colors.red),
                ),
                SizedBox(height: 5),
                Text(
                  code,
                  style: TextStyle(color: Colors.black54),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.green,
                      ),
                    ),
                    Text(
                      duration,
                      style: TextStyle(color: Colors.black54),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  final List<String> _menuItems = <String>[
    'Home',
    'Menu Makanan',
    'Paket Makanan',
    'Favorit',
  ];

  final List<String> _menuRoutes = <String>[
    '/home',          // Route untuk halaman Home
    '/menu-makanan',  // Route untuk halaman Menu Makanan
    '/paket-makanan', // Route untuk halaman Paket Makanan
    '/favorit',       // Route untuk halaman Favorit
  ];

// Menambahkan daftar ikon untuk setiap item menu
  final List<IconData> _menuIcons = <IconData>[
    Icons.home,            // Ikon untuk Home
    Icons.restaurant_menu,  // Ikon untuk Menu Makanan
    Icons.card_giftcard,     // Ikon untuk Paket Makanan
    Icons.favorite,         // Ikon untuk Favorit
  ];

  Widget _drawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('User Name'),
            accountEmail: Text('user@example.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text(
                'U',
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Get.toNamed('/home');
            },
          ),
          ListTile(
            title: Text('Menu Favorit'),
            onTap: () {
              Get.toNamed('/menu_favorit'); // Menavigasi ke menu favorit
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Fungsi untuk logout
            },
          ),
        ],
      ),
    );
  }
}