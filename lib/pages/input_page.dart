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
                Expanded(
                  child: ReusableCard(
                    color: defaultReusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: defaultReusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: defaultReusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: defaultReusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: defaultReusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: defaultBottomContainerHeightColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
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
