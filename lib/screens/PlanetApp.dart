import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sales_app/screens/DetailPlant.dart';
import 'package:sales_app/utils/constants.dart';

class PlanetApp extends StatelessWidget {
  const PlanetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: kPrimaryColor.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/flower.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.menu),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWithCustomerLine(
                  text: "Recomended",
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPlant(),
                      ),
                    );
                  },
                  child: RecommendPlanetCard(
                    image: "assets/images/image_1.png",
                    title: "Samantha",
                    country: "Russia",
                    price: 440,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPlant(),
                      ),
                    );
                  },
                  child: RecommendPlanetCard(
                    image: "assets/images/image_2.png",
                    title: "Samantha",
                    country: "Russia",
                    price: 440,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPlant(),
                      ),
                    );
                  },
                  child: RecommendPlanetCard(
                    image: "assets/images/image_3.png",
                    title: "Samantha",
                    country: "Russia",
                    price: 440,
                    //press:
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWithCustomerLine(
                  text: 'Featured Planets',
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text(
                    "More",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturedPlantCard(image: "assets/images/bottom_img_1.png"),
                FeaturedPlantCard(image: "assets/images/bottom_img_2.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderWithSearchBox extends StatelessWidget {
  final Size size;
  const HeaderWithSearchBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(36),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 30 + kDefaultPadding,
                  right: kDefaultPadding,
                  left: kDefaultPadding),
              child: Row(
                children: [
                  Text(
                    "Hi Uishopy!",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Image.asset("assets/images/logo.png"),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 10),
              margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: TextField(
                onChanged: (value) {},
                decoration: InputDecoration(
                  hintText: 'search',
                  hintStyle: TextStyle(
                    color: kPrimaryColor.withOpacity(0.5),
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  suffixIcon: Icon(
                    Icons.search,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomerLine extends StatelessWidget {
  final String text;
  const TitleWithCustomerLine({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: kDefaultPadding / 4, right: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 2,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}

class RecommendPlanetCard extends StatelessWidget {
  final String image, title, country;
  final int price;
  //final Function press;

  const RecommendPlanetCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.country,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 10), blurRadius: 20, color: Colors.black26),
        ],
      ),
      margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.27,
      // height: size.height * 0.2,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 20,
                        color: Colors.black26),
                  ],
                ),

                //  color: Colors.blue,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    height: 100,
                    width: size.width * 0.3,
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 2, left: 2, bottom: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$title\n',
                      style: TextStyle(fontSize: 12),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '$country',
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                            fontSize: 11,
                          ),
                        ),
                        Text(
                          '\$$price',
                          style: Theme.of(context)
                              .textTheme
                              .button!
                              .copyWith(color: kPrimaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
                //  ListTile(
                //   title: Text(
                //     '$title\n'.toUpperCase(),
                //     style: TextStyle(fontSize: 12),
                //   ),
                //   subtitle: Text(
                //     '$country'.toUpperCase(),
                //     style: TextStyle(
                //       color: kPrimaryColor.withOpacity(0.5),
                //       fontSize: 11,
                //     ),
                //   ),
                //   leading: Text(
                //     '\$$price',
                //     style: Theme.of(context)
                //         .textTheme
                //         .button!
                //         .copyWith(color: kPrimaryColor),
                //   ),
                // ),
                // Row(
                //   children: [
                //     RichText(
                //       text: TextSpan(
                //         children: [
                //           TextSpan(
                //               text: '$title\n'.toUpperCase(),
                //               style: Theme.of(context).textTheme.button),
                //           TextSpan(
                //             text: '$country'.toUpperCase(),
                //             style: TextStyle(
                //               color: kPrimaryColor.withOpacity(0.5),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //     Spacer(),
                //     Text(
                //       '\$$price',
                //       style: Theme.of(context)
                //           .textTheme
                //           .button!
                //           .copyWith(color: kPrimaryColor),
                //     ),
                //   ],
                // ),
              ),
            ],
          )
        ],
      ),
      // Column(
      //   children: [
      //     Image.asset(image),
      //     GestureDetector(
      //       onTap: () {},
      //       child: Container(
      //         padding: EdgeInsets.all(kDefaultPadding / 2),
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.vertical(
      //             bottom: Radius.circular(10),
      //           ),
      //           color: Colors.white,
      //           boxShadow: [
      //             BoxShadow(
      //               offset: Offset(0, 10),
      //               blurRadius: 50,
      //               color: kPrimaryColor.withOpacity(0.23),
      //             ),
      //           ],
      //         ),
      //         child: Row(
      //           children: [
      //             RichText(
      //               text: TextSpan(
      //                 children: [
      //                   TextSpan(
      //                       text: '$title\n'.toUpperCase(),
      //                       style: Theme.of(context).textTheme.button),
      //                   TextSpan(
      //                     text: '$country'.toUpperCase(),
      //                     style: TextStyle(
      //                       color: kPrimaryColor.withOpacity(0.5),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             Spacer(),
      //             Text(
      //               '\$$price',
      //               style: Theme.of(context)
      //                   .textTheme
      //                   .button!
      //                   .copyWith(color: kPrimaryColor),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  final String image;
  //final Function press;

  const FeaturedPlantCard({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.7,
        height: size.height * 0.3,
        //color: Colors.red,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
