import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "What should I eat today?",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: YemekSiralama(),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class YemekSiralama extends StatefulWidget {
  YemekSiralama({super.key});

  @override
  State<YemekSiralama> createState() => _YemekSiralamaState();
}

class _YemekSiralamaState extends State<YemekSiralama> {
  int tatlino = 1;

  int corbano = 1;

  int yemekno = 1;
  List<String> corbaAdlari = [
    "Mercimek Çorbasi",
    "Tarhana Çorbasi",
    "TavukSuyu Çorbasi",
    "Düğün Çorbasi",
    "Yoğurt Çorbasi"
  ];
  List<String> yemekAdlari = [
    "Musakka",
    "Manti",
    "Kuru Fasulye",
    "Icli Kofte",
    "Balik"
  ];
  List<String> tatliAdlari = [
    "Kadayif Sarma",
    "Baklava",
    "Sutlac",
    "Kazandibi",
    "Dondurma"
  ];
  void randomyemek() {
    setState(() {
      corbano = Random().nextInt(5) + 1;
      yemekno = Random().nextInt(5) + 1;
      tatlino = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  overlayColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 224, 205, 205)),
                ),
                onLongPress: () => print("Uzun bastsdai"),
                onPressed: randomyemek,
                child: Image.asset("assets/images/corba_$corbano.jpg"),
              ),
            ),
          ),
          Text(
            corbaAdlari[corbano - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      overlayColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 224, 205, 205))),
                  onPressed: randomyemek,
                  onLongPress: () => print("Uzun bwqeqasti"),
                  child: Image.asset("assets/images/yemek_$yemekno.jpg")),
            ),
          ),
          Text(
            yemekAdlari[yemekno - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    overlayColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 224, 205, 205)),
                  ),
                  onPressed: randomyemek,
                  onLongPress: () => print("Uzun ba42sti"),
                  child: Image.asset("assets/images/tatli_$tatlino.jpg")),
            ),
          ),
          Text(
            tatliAdlari[tatlino - 1],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}
