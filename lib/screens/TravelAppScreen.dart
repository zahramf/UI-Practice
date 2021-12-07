import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_app/models/beach_model.dart';
import 'package:sales_app/models/popular_model.dart';
import 'package:sales_app/models/recommended_model.dart';
import 'package:sales_app/widgets/bottom_navigation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TravelAppScreen extends StatelessWidget {
  const TravelAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(viewportFraction: 0.877);
    return Scaffold(
      bottomNavigationBar: BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Container(
                height: 57.6,
                margin: EdgeInsets.only(left: 28.8, right: 28.8, top: 28.8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey[100],
                      ),
                      child: Icon(
                        Icons.menu,
                        color: Colors.grey[600],
                      ),
                      //SvgPicture.asset("assets/svg/icon_drawer.svg"),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9.6),
                        color: Colors.grey[100],
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.grey[600],
                      ),
                      // SvgPicture.asset("assets/svg/icon_search.svg"),
                    ),
                  ],
                ),
              ),
              //Title
              Padding(
                padding: EdgeInsets.only(top: 4, left: 15),
                child: Text(
                  "Explore\nThe Nuture",
                  style: GoogleFonts.playfairDisplay(
                      fontSize: 46,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              //Custom Tab bar with Custom Indicator
              Container(
                height: 40,
                margin: EdgeInsets.only(top: 30, left: 15),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 14, right: 14),
                    // indicatorPadding: EdgeInsets.only(left: 14, right: 14),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[500],
                    labelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w900),
                    unselectedLabelStyle: GoogleFonts.lato(
                        fontSize: 14, fontWeight: FontWeight.w700),
                    //indicator:,
                    tabs: [
                      Tab(
                        child: Container(
                          child: Text("Recomended"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text("Popular"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text("New Destination"),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text("Hidden Gems"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //ListView widget with page view
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                // 250,
                margin: EdgeInsets.only(top: 15, left: 15),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 20),
                      width: 500,
                      height: 600,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            recommendations[index].image,
                            width: 500,
                            height: 600,
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 5,
                            left: 30,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: BackdropFilter(
                                filter:
                                    ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                                child: Container(
                                  height: 36,
                                  // width: 60,
                                  padding: EdgeInsets.only(left: 17, right: 17),
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        recommendations[index].name,
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 30),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations.length,
                  effect: ExpandingDotsEffect(
                      activeDotColor: Colors.grey,
                      dotColor: Colors.black,
                      dotHeight: 4,
                      dotWidth: 4,
                      spacing: 3),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 48, left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Popular Categories",
                      style: GoogleFonts.playfairDisplay(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black),
                    ),
                    Text(
                      "Show All",
                      style: GoogleFonts.lato(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 33),
                height: 45,
                child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(populars[index].color),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            populars[index].image,
                            height: 16,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 20, bottom: 25),
                height: 124,
                child: ListView.builder(
                  itemCount: beaches.length,
                  padding: EdgeInsets.only(left: 28, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 125,
                      width: 188,
                      margin: EdgeInsets.only(right: 17),
                      // child: Row(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     SizedBox(
                      //       width: 20,
                      //     ),
                      //     Image.asset(
                      //       beaches[index].image,
                      //       height: 16,
                      //       width: 30,
                      //     ),
                      //     SizedBox(
                      //       width: 20,
                      //     ),
                      //   ],
                      // ),
                      child: Image.asset(
                        beaches[index].image,
                        height: 125,
                        width: 188,
                        fit: BoxFit.cover,
                      ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(10),
                      //   image: DecorationImage(
                      //     fit: BoxFit.cover,
                      //     image:Image.asset(beaches[index].image)
                      //     // NetworkImage(beaches[index].image),
                      //   ),
                      // ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
