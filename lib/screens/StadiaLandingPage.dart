import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:sales_app/models/friends.dart';
import 'package:sales_app/models/last_played_game.dart';
import 'package:sales_app/utils/constants.dart';
import 'package:sales_app/widgets/lasr_played_games_tile.dart';
import 'package:sales_app/widgets/rounded_image_widget.dart';

class StadiaLandingPage extends StatelessWidget {
  const StadiaLandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final logoHeight = screenHeight * 0.4;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Transform.translate(
              offset: Offset(screenWidth * 0.4, 10),
              child: Transform.rotate(
                angle: -0.1,
                child: SvgPicture.asset(
                  "assets/images/stadia_logo.svg",
                  height: logoHeight,
                  color: logoTintColor,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Row(
                      children: [
                        RoundedImageWidget(
                          ranking: 40,
                          imagePath: "assets/player/jon_snow.jpeg",
                          showRanking: true,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "Hello", style: userNameTextStyle),
                                TextSpan(text: "\n"),
                                TextSpan(
                                    text: "Jon Snow", style: userNameTextStyle),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .13,
                    margin: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(blurRadius: 2, color: Colors.grey),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HOURS PLAYED",
                            style: hoursPlayedLabelTextStyle,
                          ),
                          Text(
                            "297 HOURS",
                            style: hoursPlayedTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32, top: 20),
                    child: Text(
                      "Last Played games",
                      style: headingOneTextStyle,
                    ),
                  ),
                  for (var i = 0; i < lastPlayedGames.length; i++)
                    LastPlayedGamesTile(
                      lastPlayedGame: lastPlayedGames[i],
                      screenWidth: screenWidth,
                      gameProgress: lastPlayedGames[i].gameProgress,
                    ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 32, top: 20, bottom: 5),
                    child: Text(
                      "Friends",
                      style: headingOneTextStyle,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          for (var i = 0; i < friends.length; i++)
                            RoundedImageWidget(
                              imagePath: friends[i].imagePath,
                              isOnline: friends[i].isOnline,
                              name: friends[i].name,
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
