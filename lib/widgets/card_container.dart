import 'package:flutter/cupertino.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, required this.cardColor, required this.cardChild, required this.onTap});

  final Color cardColor;
  final Widget cardChild;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
