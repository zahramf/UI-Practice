import 'package:flutter/material.dart';
//import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:sales_app/models/data.dart';
import 'package:sales_app/screens/Detail_minimal_UI.dart';
import 'package:sales_app/utils/constants.dart';
import 'package:card_swiper/card_swiper.dart';

class MinimalUI extends StatefulWidget {
  const MinimalUI({Key? key}) : super(key: key);

  @override
  _MinimalUIState createState() => _MinimalUIState();
}

class _MinimalUIState extends State<MinimalUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [gradientStartColor, gradientEndColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.3, 0.7],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 44),
                  ),
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          "Solar System",
                          style: TextStyle(fontSize: 24, color: Colors.white38),
                        ),
                      ),
                    ],
                    //onChanged: (value){},
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Image.asset('assets/images/drop_down_icon.png'),
                    ),
                    underline: SizedBox(),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.66,
                    padding: const EdgeInsets.only(left: 32),
                    child: Swiper(
                      itemCount: planets.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                      //itemHeight: MediaQuery.of(context).size.height * 0.5,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(
                            activeSize: 18, space: 5),
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (context, a, b) => DetailUI(
                                  planetsInfo: planets[index],
                                ),
                              ),
                            );
                          },
                          child: Stack(
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: 100,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    // elevation: 8,
                                    // shape: RoundedRectangleBorder(
                                    //   borderRadius: BorderRadius.circular(32),
                                    // ),
                                    // color: Colors.white,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(32),
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      // color: Colors.green,
                                      child: Image.asset(
                                          planets[index].iconImage)),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // SizedBox(
                                      //   height: 250,
                                      // ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: Container(
                                          // color: Colors.red,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                planets[index].name,
                                                style: TextStyle(
                                                    color: Colors.purple[900],
                                                    fontSize: 40,
                                                    fontWeight:
                                                        FontWeight.w400),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "Know more",
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        color:
                                                            secondaryTextColor2),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward,
                                                    color: secondaryTextColor2,
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      // Text(
                                      //   "Solar System",
                                      //   style: TextStyle(
                                      //       fontSize: 23,
                                      //       color: primaryTextColor2),
                                      // ),
                                      // SizedBox(
                                      //   height: 32,
                                      // ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // color: navigationColor,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(36),
          ),
          color: navigationColor,
        ),
        padding: const EdgeInsets.all(14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.view_comfortable),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
