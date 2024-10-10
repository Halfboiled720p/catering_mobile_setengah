import 'package:catering_mobile/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Admin'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout), // Icon untuk tombol logout
            onPressed: () {
              Get.offNamed(Routes.MAINLOGIN);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/images/Container.png'),
                  minRadius: 30,
                  maxRadius: 50,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Admin',
                      style:
                      TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Informasi Akun',
                          style:
                          TextStyle(fontSize: 16, color: Colors.grey[700]),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey[700],
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black, size: 30),
              title: Text('Manage User'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Tambahkan navigasi ke halaman Manage User
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.food_bank, color: Colors.black, size: 30),
              title: Text('Manage Menu'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Tambahkan navigasi ke halaman Manage Menu
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.inventory, color: Colors.black, size: 30),
              title: Text('Manage Paket'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Tambahkan navigasi ke halaman Manage Paket
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.local_activity, color: Colors.black, size: 30),
              title: Text('Manage Voucher'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Tambahkan navigasi ke halaman Manage Paket
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.receipt_long, color: Colors.black, size: 30),
              title: Text('Riwayat Transaksi'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
              onTap: () {
                // Tambahkan navigasi ke halaman Riwayat Transaksi
              },
            ),
            Divider(),
            TextButton(
              onPressed: () {
                Get.offNamed(Routes.HOMEKURIR);
              },
              child: const Text(
                'Home Kurir!',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.offNamed(Routes.HOME);
              },
              child: const Text(
                'Home User!',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
