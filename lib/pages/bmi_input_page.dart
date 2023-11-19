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

  final List<Map<String, List<Map<String, dynamic>>>> rowsCardData = [
    {
      'top': [
        {
          'iconLabel': 'Male',
          'iconData': FontAwesomeIcons.mars,
        },
        {
          'iconLabel': 'Female',
          'iconData': FontAwesomeIcons.venus,
        },
      ],
      'middle': [
        {
          'iconLabel': 'Height',
          'iconData': FontAwesomeIcons.mars,
        },
      ],
      'bottom': [
        {
          'iconLabel': 'Weight',
          'iconData': FontAwesomeIcons.mars,
        },
        {
          'iconLabel': 'Age',
          'iconData': FontAwesomeIcons.mars,
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: rowsCardData.expand((rowCardData) {
          return [
            Expanded(
              child: Row(
                children: rowCardData['top']!.map<Widget>((data) {
                  final int rowCardIndex = rowCardData['top']!.indexOf(data);
                  print(rowCardIndex);
                  return ExpandedCard(
                    cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                    iconLabel: data['iconLabel']!,
                    iconData: data['iconData']!,
                    onTap: () {
                      updateSelectedIndex(rowCardIndex);
                    },
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Row(
                children: rowCardData['middle']!.map<Widget>((data) {
                  final int rowCardIndex = rowCardData['middle']!.indexOf(data) + rowCardData['top']!.length;
                  print(rowCardIndex);
                  return ExpandedCard(
                    cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                    iconLabel: data['iconLabel']!,
                    iconData: data['iconData']!,
                    onTap: () {
                      updateSelectedIndex(rowCardIndex);
                    },
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Row(
                children: rowCardData['bottom']!.map<Widget>((data) {
                  final int rowCardIndex = rowCardData['bottom']!.indexOf(data) + rowCardData['top']!.length + rowCardData['middle']!.length;
                  print(rowCardIndex);
                  return ExpandedCard(
                    cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                    iconLabel: data['iconLabel']!,
                    iconData: data['iconData']!,
                    onTap: () {
                      updateSelectedIndex(rowCardIndex);
                    },
                  );
                }).toList(),
              ),
            ),
          ];
        }).toList(),
      ),
      bottomNavigationBar: Container(
        color: kDefaultBottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: const Center(
          child: Text('test'),
        ),
      ),
    );
  }
}
