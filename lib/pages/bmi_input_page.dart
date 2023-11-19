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
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
      {
        'iconLabel': 'Female',
        'iconData': FontAwesomeIcons.venus,
      },
    ],
    [
      {
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
    ],
    [
      {
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
      {
        'iconLabel': 'Male',
        'iconData': FontAwesomeIcons.mars,
      },
    ],
  ];

  @override
  Widget build(BuildContext context) {
    int cardIndex = -1;
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
                final int rowCardIndex = ++cardIndex;
                return ExpandedCard(
                  cardColor: selectedIndex == rowCardIndex ? activeCardColor : defaultCardColor,
                  iconLabel: cardData['iconLabel'],
                  iconData: cardData['iconData'],
                  onTap: () {
                    updateSelectedIndex(rowCardIndex);
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
