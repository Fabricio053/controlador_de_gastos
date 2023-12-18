import 'package:flutter/material.dart';

class MyTextLabel extends StatelessWidget {
  final String firstLabel;
  final String lastLabel;

  const MyTextLabel(
      {super.key, required this.firstLabel, required this.lastLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(firstLabel, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
          Text(lastLabel, style: const TextStyle(fontSize: 18,fontWeight: FontWeight.w500))
        ],
      ),
    );
  }
}
