import 'package:flutter/material.dart';
import 'package:responsive_app_dash_board/widgets/all_expensess.dart';
import 'package:responsive_app_dash_board/widgets/quick_invoice.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 40),
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
