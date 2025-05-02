import 'package:flutter/material.dart';
import 'package:responsive_app_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_app_dash_board/widgets/active_and_inactive_all_expensess_item.dart';

class AllExpenssessItem extends StatelessWidget {
  const AllExpenssessItem({
    super.key,
    required this.allExpensessItemModel,
    required this.isSelected,
  });

  final AllExpensessItemModel allExpensessItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel)
        : InActiveAllExpensessItem(
          allExpensessItemModel: allExpensessItemModel,
        );
  }
}
