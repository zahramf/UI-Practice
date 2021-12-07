//import '../image_asset.dart';

class Friend {
  final String name;
  final String imagePath;
  final bool isOnline;

  const Friend(
      {required this.name, required this.imagePath, required this.isOnline});
}

final friends = [
  Friend(
      name: "Jennie",
      imagePath: "assets/player/jeenie_duhe.jpg",
      isOnline: true),
  Friend(
      name: "Gena",
      imagePath: "assets/player/gena_sedgwick.jpg",
      isOnline: false),
  Friend(
      name: "Michelle",
      imagePath: "assets/player/michelle_chong.jpg",
      isOnline: false),
  Friend(
      name: "Trish",
      imagePath: "assets/player/trish_ammons.jpg",
      isOnline: false),
];
