import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class ContainerCustom extends StatelessWidget {
  final String title;
  final bool isGastos;
  final TextEditingController controll;
  final VoidCallback onPressed;
  
  const ContainerCustom({super.key, required this.title, required this.controll, required this.onPressed, required this.isGastos, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
         color: isGastos? const Color.fromARGB(255, 255, 132, 123): Colors.green,
         borderRadius: BorderRadius.circular(20),
        ),
              width: 1000,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 24, color: MinhasCores.escuro),),
                    TextField(
                      controller: controll,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'R\$ 0.00',
                      filled: true,
                      fillColor: MinhasCores.claro,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))
                      )
                    ),
                   const SizedBox(height: 10,),
                    TextButton.icon(onPressed: onPressed, icon: const Icon(Icons.add, color: MinhasCores.claro,),label: const Text('Adcionar', style: TextStyle(color: MinhasCores.claro)), style:  ButtonStyle(backgroundColor: isGastos? const MaterialStatePropertyAll(Color.fromARGB(255, 151, 12, 2)) : const MaterialStatePropertyAll(Color.fromARGB(255, 2, 61, 4)) )),
                  ],
                ),
              ),
            ),
    );
  }
}