import 'package:flutter/material.dart';
import 'package:sales_app/utils/constants.dart';

class GameProgressWidget extends StatefulWidget {
  final double gameProgress, screenWidth;

  const GameProgressWidget(
      {Key? key, required this.gameProgress, required this.screenWidth})
      : super(key: key);

  @override
  _GameProgressWidgetState createState() => _GameProgressWidgetState();
}

class _GameProgressWidgetState extends State<GameProgressWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> progressAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    progressAnimation = Tween<double>(
            begin: 0, end: widget.screenWidth * 0.33 * widget.gameProgress)
        .animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.screenWidth * 0.33;

    return AnimatedBuilder(
      animation: progressAnimation,
      builder: (context, Widget) {
        return Stack(
          children: [
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: tertiaryTextColor, width: 1),
              ),
            ),
            Container(
              width: progressAnimation.value,
              height: 10,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  gradient: appGradient),
            ),
          ],
        );
      },
    );
  }
}
