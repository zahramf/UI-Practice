import 'package:clay_containers/clay_containers.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/models/options.dart';

class PSHome extends StatelessWidget {
  const PSHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          _Background(
            width: width * 0.4,
            height: height * 0.8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _AppBar(),
              _Title(text: 'Featured products'),
              _settingAndOptions(),
            ],
          ),
        ],
      ),
    );
  }
}

class _settingAndOptions extends StatelessWidget {
  const _settingAndOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 30),
      child: Row(
        children: [
          Icon(
            Icons.short_text,
            color: Colors.black26,
          ),
          _Options(),
        ],
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [for (int index = 0; index < options.length; index++) {}],
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final String text;
  const _Title({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = text.split(' ');
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: words[0],
              style: TextStyle(
                  fontSize: 36,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextSpan(
              text: '\n',
            ),
            TextSpan(
              text: words[1],
              style: TextStyle(
                  fontSize: 36,
                  letterSpacing: 8,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  fontFamily: 'Londrina'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  final double width, height;
  const _Background({Key? key, required this.width, required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 0,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.blueAccent),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClayContainer(
            height: 50,
            width: 50,
            depth: 20,
            borderRadius: 25,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.menu,
                size: 30,
                color: Colors.black26,
              ),
            ),
          ),
          ClayContainer(
            height: 50,
            width: 50,
            depth: 20,
            parentColor: Colors.blueAccent,
            borderRadius: 25,
            curveType: CurveType.concave,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black12, width: 2),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Icon(
                Icons.add_shopping_cart,
                size: 30,
                color: Colors.black26,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
