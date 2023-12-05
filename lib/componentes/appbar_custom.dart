import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class AppBarCustom extends StatelessWidget {
  final String title;
  const AppBarCustom({super.key, required this.title, });

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: MinhasCores.terciaria,
      title: Text(title),

    );
  }
}