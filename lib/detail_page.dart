import 'package:flutter/material.dart';
import 'package:pokemon_app/model/pokemon.dart';
import 'package:pokemon_app/shared/widget/pokemon_card_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.pokemon});
  final Pokemon pokemon;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5FBFB),
      appBar: AppBar(
        backgroundColor: Color(0xFFF5FBFB),
        title: Text(
          widget.pokemon.name,
          style: TextStyle(
            color: Color(0xFF232447),
            fontWeight: FontWeight.bold,
            fontSize: 29,
          ),
        ),
      ),
      body: Column(
        children: [
          buildDetailArea(),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFBCD9D8),
                borderRadius: BorderRadius.circular(28),
              ),
              child: PokemonCardWidget(
                imageUrl: widget.pokemon.imageUrl,
                type: widget.pokemon.type,
                showType: false,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDetailArea() {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.pokemon.id.toString().padLeft(3, '0'),
            style: TextStyle(fontSize: 20, color: Color(0xFF3C414F)),
          ),
        ],
      ),
    );
  }
}
