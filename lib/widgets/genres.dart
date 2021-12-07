import 'package:flutter/material.dart';
import 'package:sales_app/utils/constants.dart';

class Genres extends StatelessWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> genres = [
      'Action',
      'Crime',
      'Comedy',
      'Drama',
      'Horror',
      'Animation'
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) {
          return buildCardContainer(index, context, genres);
        },
      ),
    );
  }

  Container buildCardContainer(
      int index, BuildContext context, List<String> genres) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      padding:
          EdgeInsets.symmetric(horizontal: kDefaultPadding / 4, vertical: 2),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      // padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        genres[index],
        style: TextStyle(color: kTextColor2.withOpacity(0.8), fontSize: 16),
      ),
    );
  }
}
