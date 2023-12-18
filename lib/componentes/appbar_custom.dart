import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCustom({super.key, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(color: MinhasCores.claro),
      surfaceTintColor: MinhasCores.claro, 
      backgroundColor: MinhasCores.terciaria,
      title: Text(
        title,
        style: const TextStyle(color: MinhasCores.claro),
      ),
    );
  }
}
