import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';
import 'package:projeto_f7/telas/agenda.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String titleLeft;
  final bool home;
  const AppBarCustom({super.key, required this.title, this.home = false,  this.titleLeft = '',  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MinhasCores.terciaria,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(title, style:const TextStyle(color: MinhasCores.claro),),
        TextButton(onPressed: (){
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>const Agenda()),);
        }, child: Text(titleLeft, style:const TextStyle(color: MinhasCores.claro)),)
      ],),
      // leading: home? null: IconButton(onPressed: () => Navigator.pop(context), icon: const Icon(Icons.arrow_back, color: MinhasCores.claro,)),

    );
  }
}