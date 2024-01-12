// screens/card_display_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/card.dart';
import 'package:flutter_application_1/screens/card_selection.screen.dart';

class CardDisplayScreen extends StatelessWidget {
  final CardModel card;
  final String levelName;
  CardDisplayScreen({required this.card, required this.levelName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Display'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              card.text,
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                // Refresh the card by navigating to the same screen (CardSelectionScreen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '1',
                      levelName: levelName,
                    ),
                  ),
                );
              },
              child: Text('🙂 Знакомство'),
            ),
            ElevatedButton(
              onPressed: () {
                // Refresh the card by navigating to the same screen (CardSelectionScreen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '2',
                      levelName: levelName,
                    ),
                  ),
                );
              },
              child: Text('😏 Погружение'),
            ),
            ElevatedButton(
              onPressed: () {
                // Refresh the card by navigating to the same screen (CardSelectionScreen)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '3',
                      levelName: levelName,
                    ),
                  ),
                );
              },
              child: Text('😌 Рефлексия'),
            ),
          ],
        ),
      ),
    );
  }
}
