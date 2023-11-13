import 'package:flutter/cupertino.dart';

const cardLabelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  const IconContent({
    super.key,
    required this.iconLabel,
    required this.iconData,
  });

  final String iconLabel;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        const SizedBox(height: 15.0),
        Text(
          iconLabel,
          style: cardLabelTextStyle,
        )
      ],
    );
  }
}
