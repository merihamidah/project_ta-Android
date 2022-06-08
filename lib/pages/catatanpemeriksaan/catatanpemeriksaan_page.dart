import 'package:flutter/material.dart';

class CatatanPemeriksaanPage extends StatelessWidget {
  const CatatanPemeriksaanPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catatan Pemeriksaan"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
