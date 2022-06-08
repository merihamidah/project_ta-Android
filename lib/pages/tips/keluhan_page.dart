import 'package:flutter/material.dart';
import 'package:project_ta/model/keluhan.dart';
import 'package:project_ta/pages/tips/detaill_keluhan.dart';

class KeluhanPage extends StatelessWidget {
  const KeluhanPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      body: ListView.builder(
          itemCount: keluhanList.length,
          itemBuilder: (context, index) {
            Keluhan keluhan = keluhanList[index];
            return Card(
              child: ListTile(
                title: Text(keluhan.title),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KeluhanDetail(keluhan)));
                },
              ),
            );
          }));
}
