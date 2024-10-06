import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFECD7D7),
      appBar: AppBar(
        title:
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 20,
              ),
            ),

        centerTitle: true,
        backgroundColor: Color(0xFFECD7D7),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/Container.png',
                height: 150,
              ),
            ),
            SizedBox(height: 20),
            // Judul
            Center(
              child: Text(
                'Selamat Datang',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'Silahkan Login',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
            ),
            SizedBox(height: 30),
            // Input Username
            Text(
              'Username',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF2E3E3),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFFB4A5A5), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFF23A1F2), width: 2.5),
                ),
                hintText: 'Masukkan Username',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 20),
            // Input Password
            Text(
              'Password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 8),
            TextField(
              obscureText: true, // Menyembunyikan password
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF2E3E3),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide(color: Color(0xFFB4A5A5), width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide:
                      const BorderSide(color: Color(0xFF23A1F2), width: 2.5),
                ),
                hintText: 'Masukkan Password',
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(height: 30),
            // Tombol Masuk
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi untuk login
                },
                child: Text(
                  'Masuk',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 80),
                  backgroundColor: Color(0xFFFF3131), // Warna tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Teks "Belum Punya Akun?"
            Center(
              child: Text(
                'Belum Punya Akun?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  print("Navigasi ke halaman pendaftaran");
                  // Get.toNamed(Routes.REGISTER);
                },
                child: Text(
                  'Daftar!',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
