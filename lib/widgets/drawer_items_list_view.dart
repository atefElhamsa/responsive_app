import 'package:flutter/material.dart';
import 'package:responsive_app_dash_board/models/drawer_item_model.dart';
import 'package:responsive_app_dash_board/utils/app_images.dart';
import 'package:responsive_app_dash_board/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    const DrawerItemModel(
      image: Assets.imagesMytransaction,
      title: "My Transaction",
    ),
    const DrawerItemModel(image: Assets.imagesStatics, title: "Statistics"),
    const DrawerItemModel(image: Assets.imagesWallet, title: "Wallet Account"),
    const DrawerItemModel(
      image: Assets.imagesInvestments,
      title: "My Investments",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
      itemCount: items.length,
    );
  }
}
