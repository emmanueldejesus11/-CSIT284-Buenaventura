import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  const ChartBar({super.key, required this.fill});

  final double fill; // 0.0 to 1.0

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: fill),
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeOut,
          builder: (context, value, _) => FractionallySizedBox(
            heightFactor: value,
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(8)),
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}