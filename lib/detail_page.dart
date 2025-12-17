import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.pokemon});
  final  dynamic pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8F3F5),
      body: Center(child: Text("Detail Page for ${pokemon.name}")),
    );
  }
}