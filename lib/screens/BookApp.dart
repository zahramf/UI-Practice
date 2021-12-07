import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_app/models/newbook_model.dart';
import 'package:sales_app/models/popularbook_model.dart';
import 'package:sales_app/screens/selected_book_screen.dart';
import 'package:sales_app/widgets/custom_tab_indicator.dart';

class BookApp extends StatefulWidget {
  const BookApp({Key? key}) : super(key: key);

  @override
  _BookAppState createState() => _BookAppState();
}

class _BookAppState extends State<BookApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  "Hi, Rizki",
                  style: GoogleFonts.openSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
              ),
              Text(
                "Discover Latest Book",
                style: GoogleFonts.openSans(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    TextField(
                      maxLengthEnforced: true,
                      style: GoogleFonts.openSans(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      decoration: InputDecoration(
                        fillColor: Colors.grey,
                        contentPadding: EdgeInsets.fromLTRB(19, 19, 50, 19),
                        border: InputBorder.none,
                        hintText: "Search book ...",
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 12, color: Colors.grey),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.orange[700],
                        ),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Custom Tab Bar

              Container(
                padding: EdgeInsets.only(top: 20, left: 5),
                // margin: EdgeInsets.only(right: 10),
                //  color: Colors.red,
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    // indicatorSize: TabBarIndicatorSize.label,
                    indicatorColor: Colors.black,
                    //indicator: BoxDecoration(color: Colors.green),

                    // indicator: RoundedRectangleTabIndicator(
                    //     weight: 2, width: 10, color: Colors.black),
                    tabs: [
                      // Align(
                      //   alignment: Alignment.centerLeft,
                      //   child:
                      Tab(
                        child:
                            // Text("New")
                            Container(
                          width: 50,
                          //height: 30,
                          // color: Colors.yellow,
                          child: Text("New"),
                        ),
                      ),
                      // ),
                      Tab(
                        child:
                            // Text("Trending"),
                            Container(
                          width: 80,
                          // color: Colors.red,
                          child: Text("Trending"),
                        ),
                      ),
                      Tab(
                        child:
                            // Text("Best Seller"),
                            Container(
                          width: 90,
                          // color: Colors.green,
                          child: Text("Best Seller"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 200,
                padding: EdgeInsets.only(top: 30),
                child: ListView.builder(
                  // padding: EdgeInsets.only(left: 0, right: 6),
                  scrollDirection: Axis.horizontal,
                  itemCount: newBookData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 200,
                      width: 130,
                      decoration: BoxDecoration(
                          //color: Colors.amberAccent,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage(newbooks[index].image))),
                    );
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Popular",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20),
                ),
              ),
              ListView.builder(
                padding: EdgeInsets.only(top: 20),
                physics: BouncingScrollPhysics(),
                itemCount: populars.length,
                shrinkWrap: true,
                //scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SelectedBookScreen(
                            popularModel: populars[index],
                          ),
                        ),
                      );
                      print('ListView Tapped');
                    },
                    child: Container(
                      height: 81,
                      width: MediaQuery.of(context).size.width - 50,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Container(
                              height: 81,
                              width: 62,
                              decoration: BoxDecoration(
                                // color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(populars[index].image),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                populars[index].title,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16),
                              ),
                              Text(
                                populars[index].author,
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                "\$" + populars[index].price,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
