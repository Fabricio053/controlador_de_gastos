import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class ContainerCustom extends StatelessWidget {
  final String label;
  final String labelRigth;
  final bool textRigth;
  const ContainerCustom({super.key, required this.label,  this.labelRigth = '', this.textRigth = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
              width: 1000,
              color: MinhasCores.claro,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(label, style: const TextStyle(fontSize: 24),),
                    Visibility(
                      visible: textRigth,
                      child: Text(labelRigth,style: const TextStyle(fontSize: 24)))
                  ],
                ),
              ),
            ),
    );
  }
}