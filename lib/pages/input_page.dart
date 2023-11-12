import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const defaultBottomContainerHeightColor = Color(0xFFEB1555);
const defaultReusableCardColor = Color(0xFF1D1F33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Expanded displayExpanded(Color color) {
    return Expanded(
      child: ReusableCard(
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                displayExpanded(defaultReusableCardColor),
                displayExpanded(defaultReusableCardColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                displayExpanded(defaultReusableCardColor),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                displayExpanded(defaultReusableCardColor),
                displayExpanded(defaultReusableCardColor),
              ],
            ),
          ),
          Container(
            color: defaultBottomContainerHeightColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
            child: const Center(child: Text('test')),
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  const ReusableCard({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
