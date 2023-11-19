import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'card_container.dart';
import 'icon_content.dart';

class ExpandedCard extends StatefulWidget {
  const ExpandedCard({
    super.key,
    required this.cardColor,
    required this.iconLabel,
    required this.iconData,
    required this.onTap,
  });

  final Color cardColor;
  final IconData iconData;
  final String iconLabel;
  final VoidCallback onTap;

  @override
  State<ExpandedCard> createState() => _ExpandedCardState();
}

class _ExpandedCardState extends State<ExpandedCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: widget.onTap,
        child: CardContainer(
          cardColor: widget.cardColor,
          cardChild: IconContent(
            iconLabel: widget.iconLabel,
            iconData: widget.iconData,
          ),
        ),
      ),
    );
  }
}
