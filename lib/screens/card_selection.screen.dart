// screens/card_selection_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/card.dart';
import 'package:flutter_application_1/screens/card_display_screen.dart';
import 'package:flutter_application_1/services/card_service.dart';

class CardSelectionScreen extends StatelessWidget {
  final String deckId;
  final String levelName;
  CardSelectionScreen({required this.deckId, required this.levelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Card'),
      ),
      body: FutureBuilder<CardModel>(
        future: CardService.getCard(deckId, levelName, '1'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            // Display the selected card
            return CardDisplayScreen(
              card: snapshot.data!,
              levelName: levelName,
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          // Display a loading indicator while fetching the card
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
