import 'package:flutter/material.dart';
import 'package:project_ta/pages/tips/artikel_page.dart';
import 'package:project_ta/pages/tips/keluhan_page.dart';
import 'package:project_ta/pages/tips/aktivitas.dart';

class TipsPage extends StatefulWidget {
  const TipsPage({Key key}) : super(key: key);

  @override
  State<TipsPage> createState() => _TipsPageState();
}

class _TipsPageState extends State<TipsPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text("Tips"),
          centerTitle: true,
          backgroundColor: Colors.pinkAccent,
          bottom: TabBar(
              labelStyle:
                  const TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
              controller: controller,
              tabs: const [
                Tab(text: 'Artikel', icon: Icon(Icons.book)),
                Tab(
                    text: 'Aktivitas',
                    icon: Icon(Icons.pie_chart_outline_outlined)),
                Tab(text: 'Keluhan', icon: Icon(Icons.help_outline_rounded)),
              ]),
        ),
        body: TabBarView(controller: controller, children: const [
          ArtikelPage(),
          AktiviitasPage(),
          KeluhanPage(),
        ]),
      );
}
