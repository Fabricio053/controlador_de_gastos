import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class InputCustom extends StatelessWidget {
  final TextEditingController controll;
  final TextInputType keyboard;
  final String label;
  const InputCustom({super.key, required this.controll, required this.keyboard, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
      child: TextField(
        
        textAlignVertical: TextAlignVertical.center,
        controller: controll,
        keyboardType: keyboard,
        decoration: InputDecoration(
          label: Text(label),
          constraints: const BoxConstraints(maxHeight:50),
       
          filled: true,
          fillColor: MinhasCores.claro,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20)
          )
        ),      
      
      ),
    );
  }
}