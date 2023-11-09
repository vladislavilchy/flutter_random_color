import 'package:flutter/material.dart';
import 'package:flutter_random_color/view/home/home_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// HomeView widget
class HomeView extends ConsumerWidget {
  /// HomeView widget constructor
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final backgroundColor = ref.watch(backgroundColorProvider);

    return GestureDetector(
      onTap: ref.read(backgroundColorProvider.notifier).setRandomBgColor,
      child: ColoredBox(
        color: backgroundColor,
        child: const Center(
          child: Text(
            'Hello there',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}
