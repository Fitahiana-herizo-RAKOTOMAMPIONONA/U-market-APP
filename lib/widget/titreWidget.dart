import 'package:flutter/material.dart';

class titreWidget extends StatelessWidget {
  final String titre;
  const titreWidget({super.key, required this.titre});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          this.titre,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, letterSpacing: 2.0),
        ),
      ),
    );
  }
}
