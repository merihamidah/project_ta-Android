import 'package:flutter/material.dart';
import 'package:project_ta/authpages/login_page.dart';
import 'package:project_ta/drawer_items.dart';
import 'package:project_ta/pages/catatanpemeriksaan/catatanpemeriksaan_page.dart';
import 'package:project_ta/pages/jadwal/jadwalpemeriksaan_pages.dart';
import 'package:project_ta/pages/perkembanganjanin/perkembanganjanin_page.dart';
import 'package:project_ta/pages/tips/tips_page.dart';
import 'package:project_ta/pages/userprofil/userpage.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.pinkAccent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              headerWidget(context),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Perkembangan Janin',
                icon: Icons.pregnant_woman,
                onPressed: () => onItemPressed(context, index: 0),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Catatan pemeriksaan",
                icon: Icons.article_outlined,
                onPressed: () => onItemPressed(context, index: 1),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Jadwal pemeriksaan",
                icon: Icons.schedule_sharp,
                onPressed: () => onItemPressed(context, index: 2),
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Tips",
                icon: Icons.check_box_outlined,
                onPressed: () => onItemPressed(context, index: 3),
              ),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: "Log Out",
                icon: Icons.exit_to_app_outlined,
                onPressed: () => onItemPressed(context, index: 1),
              )
            ],
          ),
        ),
      ),
    );
  }
}

void onItemPressed(BuildContext context, {int index}) {
  Navigator.pop(context);

  switch (index) {
    case 0:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const PerkembanganJaninPage()));
      break;
    case 1:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const CatatanPemeriksaanPage()));
      break;
    case 2:
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const JadwalPemeriksaanPage()));
      break;
    case 3:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const TipsPage()));
      break;
    case 4:
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const LoginPage()));
      break;
  }
}

Widget headerWidget(BuildContext context) {
  return Material(
    color: Colors.pinkAccent,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const UserPage(),
        ));
      },
      child: Row(
        children: [
          const CircleAvatar(
            child: Icon(Icons.perm_identity_rounded),
            backgroundColor: Colors.pink,
          ),
          const SizedBox(
            width: 19,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Meri Hamidah",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Merigfc@gmail.com",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color.fromARGB(255, 125, 66, 71)),
              )
            ],
          )
        ],
      ),
    ),
  );
}
