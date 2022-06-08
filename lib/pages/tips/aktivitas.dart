import 'package:flutter/material.dart';
import 'package:project_ta/model/aktivitas.dart';
import 'package:project_ta/pages/tips/detail_aktivitas.dart';

class AktiviitasPage extends StatelessWidget {
  const AktiviitasPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: ListView.builder(
          itemCount: aktivitasList.length,
          itemBuilder: (context, index) {
            Aktivitas aktivitas = aktivitasList[index];
            return Card(
              child: ListTile(
                title: Text(aktivitas.title),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AktivitasDetail(aktivitas)));
                },
              ),
            );
          }));
}
