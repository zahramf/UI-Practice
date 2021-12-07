import 'package:flutter/material.dart';
import 'package:sales_app/models/last_played_game.dart';
import 'package:sales_app/utils/constants.dart';

import 'game_progress_widget.dart';

class LastPlayedGamesTile extends StatelessWidget {
  final LastPlayedGame lastPlayedGame;
  final double screenWidth;
  final double gameProgress;

  const LastPlayedGamesTile(
      {Key? key,
      required this.lastPlayedGame,
      required this.screenWidth,
      required this.gameProgress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        lastPlayedGame.imagePath,
                        height: 60,
                        width: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 15,
                      left: 10,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: lastPlayedGame.name,
                          style: headingTwoTextStyle),
                      TextSpan(text: "\n"),
                      TextSpan(
                          text: "${lastPlayedGame.hoursPlayed} hours played",
                          style: bodyTextStyle),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          // RichText,
          Expanded(
            child: GameProgressWidget(
                screenWidth: screenWidth, gameProgress: gameProgress),
          ),
        ],
      ),
    );
  }
}
