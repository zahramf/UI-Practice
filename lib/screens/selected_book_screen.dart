import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_app/models/popular_model.dart';
import 'package:sales_app/models/popularbook_model.dart';
import 'package:sales_app/screens/BookApp.dart';

class SelectedBookScreen extends StatelessWidget {
  final PopularBookModel popularModel;
  const SelectedBookScreen({Key? key, required this.popularModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                // automaticallyImplyLeading: false,
                backgroundColor: Colors.orange[600],
                expandedHeight: MediaQuery.of(context).size.height * 0.5,
                flexibleSpace: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  color: Color(popularModel.color),
                  child: Stack(
                    children: [
                      // Positioned(
                      //   left: 25,
                      //   top: 35,
                      //   child: GestureDetector(
                      //     onTap: () {
                      //       print("object");
                      //       Navigator.of(context).push(
                      //         MaterialPageRoute(
                      //             builder: (context) => BookApp()),
                      //       );
                      //     },
                      //     child: Container(
                      //         width: 32,
                      //         height: 32,
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(5),
                      //             color: Colors.white),
                      //         child: Icon(Icons.arrow_back)),
                      //   ),
                      // ),
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(popularModel.image))),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 25),
                      child: Text(
                        popularModel.title,
                        style: GoogleFonts.openSans(
                            fontSize: 27,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 7, left: 25),
                      child: Text(
                        popularModel.author,
                        style: GoogleFonts.openSans(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 7, left: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '\$',
                              style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              popularModel.price,
                              style: GoogleFonts.openSans(
                                  fontSize: 32,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        )),
                    Container(
                      height: 28,
                      margin: EdgeInsets.only(top: 23, bottom: 36),
                      padding: EdgeInsets.only(left: 25),
                      child: DefaultTabController(
                        length: 3,
                        child: TabBar(
                            labelPadding: EdgeInsets.all(0),
                            indicatorPadding: EdgeInsets.all(0),
                            isScrollable: true,
                            labelColor: Colors.black,
                            unselectedLabelColor: Colors.grey,
                            labelStyle: GoogleFonts.openSans(
                                fontSize: 14, fontWeight: FontWeight.w700),
                            unselectedLabelStyle: GoogleFonts.openSans(
                                fontSize: 14, fontWeight: FontWeight.w600),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorColor: Colors.black,
                            // indicator: RoundedRectangleTabIndicator(
                            //     weight: 2, width: 30, color: kBlackColor),
                            tabs: [
                              Tab(
                                child: Container(
                                  width: 120,
                                  // margin: EdgeInsets.only(right: 15),
                                  child: Text('Description'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  width: 120,
                                  // margin: EdgeInsets.only(right: 39),
                                  child: Text('Reviews'),
                                ),
                              ),
                              Tab(
                                child: Container(
                                  //  margin: EdgeInsets.only(right: 39),
                                  child: Text('Similar'),
                                ),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                      child: Text(
                        popularModel.description,
                        style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          letterSpacing: 1.5,
                          height: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
