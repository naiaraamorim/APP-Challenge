import 'package:flutter/material.dart';
import 'package:mobflix/components/box_card.dart';
import 'package:mobflix/components/color_dot.dart';
import 'package:mobflix/themes/theme_colors.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: BoxCard(boxContent: _RecentActivityContent()));
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['spent'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Entrada'),
                    Text(
                      '\$8900.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ColorDot(
                    color: ThemeColors.recentActivity['income'],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Saída'),
                    Text(
                      '\$2988.97',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: Text('Limite de Gastos: \$600.00'),
        ),
        LinearProgressIndicator(
          value: 0.5,
          minHeight: 4,
          color: ThemeColors.primaryColor,
        )
      ],
    );
  }
}
