enum Levels {
  introduction, // 🙂 Знакомство
  immersion, // 😏 Погружение
  reflection, // 😌 Рефлексия
}

extension LevelsExtension on Levels {
  String get level {
    switch (this) {
      case Levels.introduction:
        return '🙂 Знакомство';
      case Levels.immersion:
        return '😏 Погружение';
      case Levels.reflection:
        return '😌 Рефлексия';
    }
  }
}
