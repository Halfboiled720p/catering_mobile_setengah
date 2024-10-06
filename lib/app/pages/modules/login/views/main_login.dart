import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Text(
              'Selamat Datang',
              style: TextStyle(fontSize: 40),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Username',
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'Masukkan Username',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Password',
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              hintText: 'Masukkan Password',
              hintStyle: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    ));
  }
}
