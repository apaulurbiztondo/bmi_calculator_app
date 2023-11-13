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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                ExpandedCard(
                  cardColor: defaultCardColor,
                  iconLabel: 'Male',
                  iconData: FontAwesomeIcons.mars,
                ),
                ExpandedCard(
                  cardColor: defaultCardColor,
                  iconLabel: 'Female',
                  iconData: FontAwesomeIcons.venus,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                ExpandedCard(
                  cardColor: defaultCardColor,
                  iconLabel: 'Male',
                  iconData: FontAwesomeIcons.mars,
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                ExpandedCard(
                  cardColor: defaultCardColor,
                  iconLabel: 'Male',
                  iconData: FontAwesomeIcons.mars,
                ),
                ExpandedCard(
                  cardColor: defaultCardColor,
                  iconLabel: 'Male',
                  iconData: FontAwesomeIcons.mars,
                ),
              ],
            ),
          ),
          Container(
            color: defaultBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Center(
              child: Text('test'),
            ),
          )
        ],
      ),
    );
  }
}
