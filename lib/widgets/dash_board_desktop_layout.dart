import 'package:flutter/material.dart';
import 'package:responsive_app_dash_board/widgets/all_expensess.dart';
import 'package:responsive_app_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_app_dash_board/widgets/quick_invoice.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: ListView(
            children: const [
              SizedBox(height: 40),
              AllExpensess(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
