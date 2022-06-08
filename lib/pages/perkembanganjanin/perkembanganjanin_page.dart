// ignore_for_file: avoid_unnecessary_containers, avoid_print, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:project_ta/model/detail.dart';

final imageList = [
  'images/1weeks.png',
  'images/1weeks.png',
  'images/3weeks.png',
  'images/4weeks.png',
  'images/5weeks.png',
  'images/6weeks.png',
  'images/7weeks.png',
  'images/8weeks.png',
  'images/9weeks.png',
  'images/10weeks.png',
  'images/11weeks.png',
  'images/12weeks.png',
  'images/13weeks.png',
  'images/14weeks.png',
  'images/15weeks.png',
  'images/16weeks.png',
  'images/17weeks.jpeg',
  'images/18weeks.jpg',
  'images/19weeks.png',
  'images/20weeks.png',
  'images/21weeks.png',
  'images/22weeks.png',
  'images/23weeks.png',
  'images/24weeks.png',
  'images/25weeks.png',
  'images/26weeks.png',
  'images/27weeks.png',
  'images/28weeks.png',
  'images/29weeks.png',
  'images/30weeks.png',
  'images/31weeks.png',
  'images/32weeks.png',
  'images/33weeks.png',
  'images/34weeks.png',
  'images/35weeks.png',
  'images/36weeks.png',
  'images/37weeks.png',
  'images/38weeks.png',
  'images/39weeks.png',
  'images/40weeks.png',
];

final colorList = [
  Colors.yellow,
  Colors.blueGrey,
  Colors.lightBlue,
  Colors.brown,
  Colors.green,
  Colors.blue[900],
  Colors.pink[800],
  Colors.redAccent,
  Colors.red,
  Colors.green[900],
  Colors.brown[400],
  Colors.amber,
  Colors.red[700],
  Colors.red[900],
  Colors.lightGreen,
  Colors.yellow[700],
  Colors.grey,
  Colors.orange,
  Colors.amber[400],
  Colors.orange[800],
  Colors.deepOrange[900],
  Colors.pink[400],
  Colors.green[300],
  Colors.lightGreen[100],
  Colors.teal[900],
  Colors.amber[100],
  Colors.cyan,
  Colors.purple[900],
  Colors.green[800],
  Colors.green[300],
  Colors.indigo[800],
  Colors.orangeAccent[700],
  Colors.greenAccent[400],
  Colors.green[300],
  Colors.lightGreen[900],
  Colors.lightGreen[600],
  Colors.orangeAccent,
  Colors.orangeAccent[700],
  Colors.lightGreenAccent[700]
];

class PerkembanganJaninPage extends StatefulWidget {
  const PerkembanganJaninPage({Key key}) : super(key: key);

  @override
  State<PerkembanganJaninPage> createState() => _PerkembanganJaninPageState();
}

class _PerkembanganJaninPageState extends State<PerkembanganJaninPage> {
  int currentPage = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
        initialPage: currentPage, keepPage: false, viewportFraction: 0.8);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perkembangan Janin'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Stack(
        children: <Widget>[
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            color: colorList[currentPage],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: 320.0,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return itemBuilder(index);
                  },
                  controller: _pageController,
                  itemCount: 40,
                  pageSnapping: true,
                  onPageChanged: _onPageChanged,
                  physics: const ClampingScrollPhysics(),
                ),
              ),
              _detailsBuilder(currentPage),
            ],
          )
        ],
      ),
    );
  }

  Widget itemBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: const EdgeInsets.only(
                    top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
                height: Curves.easeIn.transform(value) * 320,
                child: child),
          );
        } else {
          return Align(
            alignment: Alignment.topCenter,
            child: Container(
                margin: const EdgeInsets.only(
                    top: 20.0, left: 20.0, right: 20.0, bottom: 10.0),
                height:
                    Curves.easeIn.transform(index == 0 ? value : value * 0.5) *
                        320,
                child: child),
          );
        }
      },
      child: Material(
        elevation: 4.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0)),
            child: Image.asset(
              imageList[index],
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }

  void _onPageChanged(int index) {
    setState(() {
      print(index);
      currentPage = index;
    });
  }

  Widget _detailsBuilder(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.5)).clamp(0.0, 1.0);
        }

        return Expanded(
          child: Transform.translate(
            offset: Offset(0, 50 + (-value * 50)),
            child: Opacity(
              opacity: value,
              child: Container(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      detailList[index].judul,
                      style: const TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20.0),
                    Text(
                      detailList[index].deskripsi,
                      style: const TextStyle(fontSize: 18.0),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Text(
                      "Lebih Banyak",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w900),
                    ),
                    Container(
                      width: 100.0,
                      height: 3.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
