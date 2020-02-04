import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//void main() => runApp(MyApp());

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
      body: Container(
        child: CarouselSlider(
          height: 401.0,
          items: [1, 2, 3, 4, 5].map(
            (i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(color: Colors.red),
                  );
                },
              );
            },
          ).toList(),
        ),
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
}
