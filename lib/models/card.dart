// models/card.dart
class CardModel {
  final String text;

  CardModel({required this.text});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(text: json['text']);
  }
}
