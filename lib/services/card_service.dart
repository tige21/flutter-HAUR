// services/card_service.dart
import 'dart:convert';

import 'package:flutter_application_1/models/card.dart';
import 'package:http/http.dart' as http;

class CardService {
  static Future<CardModel> getCard(
      String deckId, String levelName, String clientId) async {
    final response = await http.get(
      Uri.parse(
          'http://logotipiwe.ru/haur/api/v1/question?deckId=${deckId}&levelName=${levelName}&clientId=${clientId}'),
    );

    if (response.statusCode == 200) {
      return CardModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load card');
    }
  }
}
