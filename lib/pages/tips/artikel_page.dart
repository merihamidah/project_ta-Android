import 'package:flutter/material.dart';

class ArtikelPage extends StatelessWidget {
  const ArtikelPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          color: Colors.pink[100],
          child: const Center(
              child: Text(
            'Artikel',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          )),
        ),
      );
}
