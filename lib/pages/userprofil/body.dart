import 'package:flutter/material.dart';
import '../userprofil/info.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Info(
          image: "images/userprofil.png",
          name: "Meri Hamidah",
          email: "merigfc@gmail.com",
        ),
      ],
    );
  }
}
