import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// background color provider
final backgroundColorProvider =
    NotifierProvider<BackgroundColorNotifier, Color>(() {
  return BackgroundColorNotifier();
});

/// background color notifier
class BackgroundColorNotifier extends Notifier<Color> {
  /// get random color from current time
  void setRandomBgColor() {
    final currentTime = DateTime.now();
    final randomValue = currentTime.microsecondsSinceEpoch % 16777215;
    final hexColor = randomValue.toRadixString(16).padLeft(6, '0');
    state = Color(int.parse(hexColor, radix: 16) + 0xFF000000);
  }

  @override
  Color build() {
    return Colors.white;
  }
}
