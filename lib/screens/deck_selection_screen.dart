// screens/deck_selection_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/level_selection_screen.dart';

class DeckSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Deck'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen (CardSelectionScreen) with deckId 'd1'
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelectionScreen(deckId: '1'),
                  ),
                );
              },
              child: Text('😉 Для пары'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen (CardSelectionScreen) with deckId 'd2'
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelectionScreen(deckId: '2'),
                  ),
                );
              },
              child: Text('😎 Для компании'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the next screen (CardSelectionScreen) with deckId 'd3'
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LevelSelectionScreen(deckId: '3'),
                  ),
                );
              },
              child: Text('😎 Для компании, о себе'),
            ),
          ],
        ),
      ),
    );
  }
}
