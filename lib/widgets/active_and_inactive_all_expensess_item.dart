import 'package:flutter/material.dart';
import 'package:responsive_app_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_app_dash_board/utils/app_styles.dart';
import 'package:responsive_app_dash_board/widgets/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: allExpensessItemModel.image),
          const SizedBox(height: 34),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16(context),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14(context),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24(context),
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0XFF4EB7F2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            image: allExpensessItemModel.image,
            // ignore: deprecated_member_use
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleMedium16(
              context,
            ).copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14(
              context,
            ).copyWith(color: const Color(0XFFFAFAFA)),
          ),
          const SizedBox(height: 16),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24(
              context,
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
