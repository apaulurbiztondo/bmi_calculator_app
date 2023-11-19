import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constant.dart';
import '../widgets/expanded_card.dart';

class BmiInputPage extends StatefulWidget {
  const BmiInputPage({super.key});

  @override
  State<BmiInputPage> createState() => _BmiInputPageState();
}

class _BmiInputPageState extends State<BmiInputPage> {
  int selectedIndex = -1;

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<List<Map<String, dynamic>>> rowsCardData = [
    [
      {
        'index': 0,
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
      {
        'index': 1,
        'iconLabel': 'Female',
        'iconData': FontAwesomeIcons.venus,
      },
    ],
    [
      {
        'index': 2,
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
    ],
    [
      {
        'index': 3,
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
      {
        'index': 4,
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: rowsCardData.map((rowCardData) {
          return Expanded(
            child: Row(
              children: rowCardData.asMap().entries.map((entry) {
                final Map<String, dynamic> cardData = entry.value;
                final int cardIndex = cardData['index'];
                return ExpandedCard(
                  cardColor: selectedIndex == cardIndex ? activeCardColor : defaultCardColor,
                  iconLabel: cardData['iconLabel'],
                  iconData: cardData['iconData'],
                  onTap: () {
                    updateSelectedIndex(cardIndex);
                  },
                );
              }).toList(),
            ),
          );
        }).toList(),
      ),
      bottomNavigationBar: Container(
        color: defaultBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContainerHeight,
        child: const Center(
          child: Text('test'),
        ),
      ),
    );
  }
}
