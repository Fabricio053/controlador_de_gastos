import 'package:flutter/material.dart';

class DasboardCustom extends StatefulWidget {
  const DasboardCustom({super.key});

  @override
  State<DasboardCustom> createState() => _DasboardCustomState();
}

class _DasboardCustomState extends State<DasboardCustom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Row(),),
      body:Column(children: [
        Row(
          children: [

          ],
        )
      ],) ,
    );
  }
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}