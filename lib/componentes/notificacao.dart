import 'package:flutter/material.dart';
import 'package:projeto_f7/cores/cores.dart';

class TopNotification extends StatelessWidget {
  final String message;

  const TopNotification({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          color: MinhasCores.secundaria,
          child: Text(
            message,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

void mostrarNotificacao(BuildContext context, String mensagem) {
  OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Material(
        color: Colors.transparent,
        child: TopNotification(message: mensagem),
      ),
    ),
  );

  Overlay.of(context).insert(overlayEntry);
  Future.delayed(const Duration(seconds: 2), () {
    overlayEntry.remove();
  });
}
