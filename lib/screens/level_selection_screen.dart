// screens/card_selection_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/card_selection.screen.dart';

class LevelSelectionScreen extends StatefulWidget {
  final String deckId;

  LevelSelectionScreen({required this.deckId});

  @override
  _LevelSelectionScreenState createState() => _LevelSelectionScreenState();
}

class _LevelSelectionScreenState extends State<LevelSelectionScreen> {
  List<dynamic> levels = [];

  String level = '';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Level'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  level = '🙂 Знакомство';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '1',
                      levelName: level,
                    ),
                  ),
                );
              },
              child: Text('🙂 Знакомство'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  level = '😏 Погружение';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '2',
                      levelName: level,
                    ),
                  ),
                );
              },
              child: Text('😏 Погружение'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  level = '😌 Рефлексия';
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CardSelectionScreen(
                      deckId: '3',
                      levelName: level,
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
