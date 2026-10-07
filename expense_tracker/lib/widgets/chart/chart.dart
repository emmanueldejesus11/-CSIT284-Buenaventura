import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/chart/chart_bar.dart';

class Chart extends StatelessWidget {
  const Chart({super.key, required this.expenses});

  final List<Expense> expenses;

  List<ExpenseBucket> get _buckets => Category.values
      .map((category) => ExpenseBucket.forCategory(expenses, category))
      .toList();

  double get _maxTotalExpense {
    double maxTotal = 0;
    for (final bucket in _buckets) {
      if (bucket.totalExpenses > maxTotal) maxTotal = bucket.totalExpenses;
    }
    return maxTotal;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final buckets = _buckets;
    final maxTotal = _maxTotalExpense;

    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            scheme.primary.withValues(alpha: 0.3),
            scheme.primary.withValues(alpha: 0.0),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                for (final bucket in buckets)
                  ChartBar(
                    fill: bucket.totalExpenses == 0
                        ? 0
                        : bucket.totalExpenses / maxTotal,
                  ),
              ],
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              for (final bucket in buckets)
                Expanded(
                  child: Icon(
                    categoryIcons[bucket.category],
                    color: scheme.primary,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}