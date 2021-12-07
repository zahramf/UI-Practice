import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sales_app/models/meal.dart';
import 'package:sales_app/screens/meal_detail_screen.dart';
import 'package:sales_app/screens/workout_screen.dart';
import 'package:vector_math/vector_math_64.dart' as math;
import 'package:intl/intl.dart';

class DietAppProfile extends StatelessWidget {
  const DietAppProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final today = DateTime.now();

    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(40),
        ),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: Color(0xFF200087),
          ),
          unselectedIconTheme: IconThemeData(color: Colors.black12),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text(
                "Search",
                style: TextStyle(color: Colors.white),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height * 0.32,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
                color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    "${DateFormat("EEEE").format(today)}, ${DateFormat("d MMMM").format(today)}",
                    // "Date, Year",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                  subtitle: Text(
                    "Hello, David",
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 26,
                        color: Colors.black),
                  ),
                  trailing: ClipOval(
                    child: Image.asset("assets/user.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 0),
                  child: Container(
                    height: height * 0.2,
                    //color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _RadialProgress(
                          height: height * 0.1,
                          width: width * 0.35,
                          progress: 0.7,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            _IngredientProgress(
                              ingredient: "protein",
                              leftAmount: 72,
                              progress: 0.3,
                              progressColor: Colors.green,
                              width: width * 0.3,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: _IngredientProgress(
                                  ingredient: "Carbs",
                                  leftAmount: 252,
                                  progress: 0.2,
                                  progressColor: Colors.red,
                                  width: width * 0.3),
                            ),
                            _IngredientProgress(
                                ingredient: "Fat",
                                leftAmount: 61,
                                progress: 0.1,
                                progressColor: Colors.yellow,
                                width: width * 0.3),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              "MEALS FOR TODAY",
              style: TextStyle(
                  color: Colors.blueGrey,
                  fontWeight: FontWeight.w700,
                  fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: _MealCard(),
          ),
          OpenContainer(
            closedColor: Color(0xFFE9E9E9),
            closedElevation: 0,
            transitionType: ContainerTransitionType.fadeThrough,
            transitionDuration: Duration(milliseconds: 2000),
            openBuilder: (context, _) {
              return WorkoutScreen();
            },
            closedBuilder: (context, VoidCallback openContainer) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => WorkoutScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 220,
                  margin: EdgeInsets.only(bottom: 10, left: 32, right: 32),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF20008B),
                        Color(0xFF200087),
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "YOUR NEXT WORKOUT",
                          style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "UPPER BODY",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              //width: 50,
                              //height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF5B4D9D),
                              ),
                              child: Image.asset(
                                "assets/chest.png",
                                color: Colors.white,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF5B4D9D),
                              ),
                              child: Image.asset(
                                "assets/back.png",
                                color: Colors.white,
                                width: 50,
                                height: 50,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF5B4D9D),
                              ),
                              child: Image.asset(
                                "assets/biceps.png",
                                color: Colors.white,
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          // Container(
          //   height:
          //       //400,
          //       height * 0.3,
          //   color: Colors.green,
          //   child: _MealCard(),
          //   // child: Row(
          //   //   children: [
          //   //     _MealCard(),
          //   //     // for (int i = 0; i < meals.length; i++)
          //   //     //   _MealCard(
          //   //     //     meal: meals[i],
          //   //     //   ),
          //   //   ],
          //   // ),
          // ),
        ],
      ),

      //  Stack(
      //   children: [
      //     Positioned(
      //       top: 0,
      //       height: height * 0.35,
      //       left: 0,
      //       right: 0,
      //       child: ClipRRect(
      //         borderRadius: BorderRadius.vertical(
      //           bottom: Radius.circular(40),
      //         ),
      //         child: Container(
      //           color: Colors.white,
      //         ),
      //       ),
      //     ),
      //     Positioned(
      //       top: height * 0.38,
      //       height: height * 0.6,
      //       left: 0,
      //       right: 0,
      //       child: Container(
      //         // color: Colors.grey,
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Padding(
      //               padding: EdgeInsets.only(bottom: 8, left: 32, right: 16),
      //               child: Text(
      //                 "MEALS FOR TODAY",
      //                 style: TextStyle(
      //                     color: Colors.blueGrey,
      //                     fontWeight: FontWeight.w700,
      //                     fontSize: 16),
      //               ),
      //             ),
      //             Expanded(
      //               child: SingleChildScrollView(
      //                 physics: BouncingScrollPhysics(),
      //                 scrollDirection: Axis.horizontal,
      //                 child: Padding(
      //                   padding: const EdgeInsets.only(left: 30),
      //                   child: Row(
      //                     children: [
      //                       for (int i = 0; i < meals.length; i++)
      //                         _MealCard(
      //                           meal: meals[i],
      //                         ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             ),
      //             Expanded(
      //               child: Container(
      //                 color: Colors.blueAccent,
      //               ),
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

class _IngredientProgress extends StatelessWidget {
  final String ingredient;
  final int leftAmount;
  final double progress, width;
  final Color progressColor;

  const _IngredientProgress(
      {Key? key,
      required this.ingredient,
      required this.leftAmount,
      required this.progress,
      required this.progressColor,
      required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.toUpperCase(),
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 10,
                  width: width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.grey[300]),
                ),
                Container(
                  height: 10,
                  width: width * progress,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: progressColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("${leftAmount}g left"),
            ),
          ],
        ),
      ],
    );
  }
}

class _RadialProgress extends StatelessWidget {
  final double height, width, progress;
  const _RadialProgress({
    Key? key,
    required this.height,
    required this.width,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RadialPainter(progress: 0.7),
      child: Container(
        height: height,
        width: width,
        child: Center(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '1731',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF200087),
                  ),
                ),
                TextSpan(text: '\n'),
                TextSpan(
                  text: 'kcal left',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF200087),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RadialPainter extends CustomPainter {
  final double progress;

  _RadialPainter({required this.progress});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..strokeWidth = 10
      ..color = Color(0xFF200087)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);

    double relativeProgress = 360 * progress;

    canvas.drawArc(Rect.fromCircle(center: center, radius: size.width / 2),
        math.radians(0), math.radians(relativeProgress), false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _MealCard extends StatelessWidget {
  // final Meal meal;

  //const _MealCard({Key? key, required this.meal}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      // color: Colors.blue,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: meals.length,
        itemBuilder: (context, index) {
          Meal meal = meals[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MealDetailScreen(
                    meal: meal,
                  ),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6),
                ],
              ),
              // width: 130,
              //  height: 150,
              margin: EdgeInsets.all(8),
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(20),
                      //color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6),
                      ],
                    ),
                    child: Hero(
                      tag: meal.imagePath,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          height: 100,
                          width: 130,
                          image: AssetImage(meal.imagePath),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    // left: 10,
                    //top: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            meal.mealTime,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Text(
                            meal.name,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "${meal.kiloCaloriesBurnt} kcal",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.blueGrey,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colors.black12,
                                size: 14,
                              ),
                              Text(
                                "${meal.timeTaken} min",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );

    // Container(
    //   margin: EdgeInsets.only(right: 20, bottom: 10),
    //   child: Material(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(20),
    //     ),
    //     elevation: 4,
    //     child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       children: [
    //         Flexible(
    //           fit: FlexFit.tight,
    //           child: ClipRRect(
    //             borderRadius: BorderRadius.all(
    //               Radius.circular(20),
    //             ),
    //             child: Image.asset(
    //               meal.imagePath,
    //               width: 150,
    //               fit: BoxFit.fill,
    //             ),
    //           ),
    //         ),
    //         Flexible(
    //           fit: FlexFit.tight,
    //           child: Padding(
    //             padding: const EdgeInsets.only(top: 10),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 Text(meal.mealTime),
    //                 Text(meal.name),
    //                 Text(meal.kiloCaloriesBurnt),
    //                 Text(meal.timeTaken),
    //                 SizedBox(
    //                   height: 16,
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
