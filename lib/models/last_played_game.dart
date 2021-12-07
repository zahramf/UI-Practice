//import 'package:google_stadia_app_concept/image_asset.dart';

class LastPlayedGame {
  final String name;
  final int hoursPlayed;
  final String imagePath;
  final double gameProgress;

  const LastPlayedGame(
      {required this.name,
      required this.hoursPlayed,
      required this.imagePath,
      required this.gameProgress});
}

final lastPlayedGames = [
  LastPlayedGame(
      name: "Assassin's Creed Odyssey",
      hoursPlayed: 10,
      gameProgress: 0.20,
      imagePath: "assets/games/assassins_creed_odyssey.jpg"),
  LastPlayedGame(
      name: "Dead Cells",
      hoursPlayed: 50,
      gameProgress: 0.80,
      imagePath: "assets/games/dead_cells.jpg"),
  LastPlayedGame(
      name: "Stardew Valley",
      hoursPlayed: 90,
      gameProgress: 0.95,
      imagePath: "assets/games/stardew_valley.jpeg"),
  LastPlayedGame(
      name: "No Man's Sky",
      hoursPlayed: 3,
      gameProgress: 0.10,
      imagePath: "assets/games/no_mans_sky.jpeg"),
];

final popularWithFriends = ["game_fortnite", "game_apex", "game_pubg"];
