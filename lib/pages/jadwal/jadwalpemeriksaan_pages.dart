import 'package:flutter/material.dart';
import 'package:project_ta/pages/jadwal/calendar.dart';

class JadwalPemeriksaanPage extends StatelessWidget {
  const JadwalPemeriksaanPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Pemeriksaan"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Calendar(),
    );
  }
}
