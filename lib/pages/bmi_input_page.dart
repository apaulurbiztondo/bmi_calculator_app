import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constant.dart';
import '../widgets/card_container.dart';
import '../widgets/icon_content.dart';

class BmiInputPage extends StatefulWidget {
  const BmiInputPage({super.key});

  @override
  State<BmiInputPage> createState() => _BmiInputPageState();
}

class _BmiInputPageState extends State<BmiInputPage> {
  int height = 180;
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
          'label': 'Male',
          'iconData': FontAwesomeIcons.mars,
        },
        {
          'label': 'Female',
          'iconData': FontAwesomeIcons.venus,
        },
      ],
      'middle': [
        {
          'label': 'Height',
          'iconData': FontAwesomeIcons.mars,
        },
      ],
      'bottom': [
        {
          'label': 'Weight',
          'iconData': FontAwesomeIcons.mars,
        },
        {
          'label': 'Age',
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
                  return Expanded(
                    child: CardContainer(
                      onTap: () {
                        updateSelectedIndex(rowCardIndex);
                      },
                      cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                      cardChild: IconContent(
                        label: data['label'],
                        iconData: data['iconData'],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Row(
                children: rowCardData['middle']!.map<Widget>((data) {
                  final int rowCardIndex = rowCardData['middle']!.indexOf(data) + rowCardData['top']!.length;
                  return Expanded(
                    child: CardContainer(
                      onTap: () {
                        updateSelectedIndex(rowCardIndex);
                      },
                      cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data['label'],
                            style: kLabelTextStyle,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                height.toString(),
                                style: kBottomLabelTextStyle,
                              ),
                              const Text(
                                'cm',
                                style: kLabelTextStyle,
                              ),
                              Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                activeColor: const Color(0xFFEB1555),
                                inactiveColor: const Color(0xFF8D8E98),
                                onChanged: (double value) {
                                  setState(() {
                                    height = value.toInt();
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Expanded(
              child: Row(
                children: rowCardData['bottom']!.map<Widget>((data) {
                  final int rowCardIndex = rowCardData['bottom']!.indexOf(data) + rowCardData['top']!.length + rowCardData['middle']!.length;
                  return Expanded(
                    child: CardContainer(
                      onTap: () {
                        updateSelectedIndex(rowCardIndex);
                      },
                      cardColor: selectedIndex == rowCardIndex ? kActiveCardColor : kDefaultCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            data['label'],
                            style: kLabelTextStyle,
                          ),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '180',
                                style: kBottomLabelTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
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
