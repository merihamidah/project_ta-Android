import 'package:flutter/material.dart';
import '../userprofil/body.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      body: const Body(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      elevation: 3,
      title: const Text("Profil"),
      centerTitle: true,
      backgroundColor: Colors.pinkAccent,
    );
  }
}
