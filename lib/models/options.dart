class Option {
  final int id;
  final String imagePath;

  Option({required this.id, required this.imagePath});
}

final options = [
  Option(id: 0, imagePath: 'assets/icons/gamepad.png'),
  Option(id: 1, imagePath: 'assets/icons/game_screen.png'),
  Option(id: 2, imagePath: 'assets/icons/mouse.png'),
];
