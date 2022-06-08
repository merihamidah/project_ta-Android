import 'package:flutter/material.dart';
import 'package:project_ta/model/keluhan.dart';

class KeluhanDetail extends StatelessWidget {
  final Keluhan keluhan;
  const KeluhanDetail(this.keluhan, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(keluhan.title),
        backgroundColor: Colors.pink[300],
      ),
      backgroundColor: Colors.pink[50],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(keluhan.imageUrl),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  keluhan.description,
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
