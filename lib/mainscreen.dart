import 'package:flutter/material.dart';
import 'package:project_ta/navigation_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Text("Jurnal Bumil"),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
          child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width - 100,
      )),
    );
  }
}
