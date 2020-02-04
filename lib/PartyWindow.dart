import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:zoo_app/Carrossel.dart';

class PartyWindow extends StatefulWidget {
  createState() => PartyState();
}

class PartyState extends State<PartyWindow> {
  List<NetworkImage> list = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZOO'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Column(children: [
                manualCarouselDemo,
              ])),
        ],
      ),
    );
  }

  widgetTextField() {
    return TextField(
      decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(Icons.person),
          hintText: 'Informe o nome'),
    );
  }

  final CarouselSlider manualCarouselDemo = CarouselSlider(
    items: child,
    autoPlay: false,
    enlargeCenterPage: true,
    viewportFraction: 0.9,
    aspectRatio: 2.0,
  );
}
