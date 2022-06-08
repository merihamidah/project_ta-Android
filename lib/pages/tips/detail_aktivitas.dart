import 'package:flutter/material.dart';
import 'package:project_ta/model/aktivitas.dart';

class AktivitasDetail extends StatelessWidget {
  final Aktivitas aktivitas;
  const AktivitasDetail(this.aktivitas, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(aktivitas.title),
        backgroundColor: Colors.pink[300],
      ),
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(aktivitas.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  aktivitas.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
