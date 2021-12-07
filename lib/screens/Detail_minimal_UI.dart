import 'package:flutter/material.dart';
import 'package:sales_app/models/data.dart';
import 'package:sales_app/utils/constants.dart';

class DetailUI extends StatelessWidget {
  final PlanetInfo planetsInfo;

  const DetailUI({Key? key, required this.planetsInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned(
              right: -80,
              child: Image.asset(planetsInfo.iconImage),
            ),
            Positioned(
              top: 60,
              left: 30,
              child: Text(
                planetsInfo.position.toString(),
                style: TextStyle(
                  fontSize: 200,
                  color: primaryTextColor2.withOpacity(0.08),
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios)),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  // SizedBox(
                  //   height: 300,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(top: 300),
                    child: Text(
                      planetsInfo.name,
                      style: TextStyle(
                          fontSize: 56,
                          color: primaryTextColor2,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Text(
                    "Solar Syatem",
                    style: TextStyle(
                        fontSize: 31,
                        color: primaryTextColor2,
                        fontWeight: FontWeight.w400),
                  ),
                  Divider(
                    color: Colors.black38,
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    planetsInfo.description.isNotEmpty
                        ? planetsInfo.description
                        : '',
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18, color: contentTextColor),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Divider(
                    color: Colors.black38,
                  ),

                  Text(
                    "Gallery",
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                      height: 250,
                      child: ListView.builder(
                          itemCount: planetsInfo.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Card(
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: AspectRatio(
                                aspectRatio: 1,
                                child: Image.asset(
                                  planetsInfo.images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
