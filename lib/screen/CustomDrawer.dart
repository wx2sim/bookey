import 'package:flutter/material.dart';
import 'package:online_book_store/screen/UserSettingsScreen.dart';
import 'package:online_book_store/utils/utility.dart';
import 'package:provider/provider.dart';

import '../helpers/data/DrawerItems.dart';
import '../model/DrawerItem.dart';
import '../provider/navigation_provider.dart';

class Custom_Drawer extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final safeArea =
        EdgeInsets.only(top: MediaQuery.of(context).viewPadding.top);

    final provider = Provider.of<NavigationProvider>(context);
    final isCollapsed = provider.isCollapsed;

    return Container(
      width: isCollapsed ? MediaQuery.of(context).size.width * 0.2 : null,
      child: Drawer(
        child: Container(
          color: primary,
          child: Column(
            children: [
              Container(
                height: 240,
                padding: EdgeInsets.symmetric(vertical: 10).add(safeArea),
                width: double.infinity,
                child: buildHeader(isCollapsed),
              ),
              const SizedBox(height: 10),
              buildList(items: itemsFirst, isCollapsed: isCollapsed),
              const SizedBox(height: 24),
              Divider(color: appBgColor),
              const SizedBox(height: 24),
              buildList(
                indexOffset: itemsFirst.length,
                items: itemsSecond,
                isCollapsed: isCollapsed,
              ),
              Spacer(),
              buildCollapseIcon(context, isCollapsed),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList({
    required bool isCollapsed,
    required List<DrawerItem> items,
    int indexOffset = 0,
  }) =>
      ListView.separated(
        padding: isCollapsed ? EdgeInsets.zero : padding,
        shrinkWrap: true,
        primary: false,
        itemCount: items.length,
        separatorBuilder: (context, index) => SizedBox(height: 16),
        itemBuilder: (context, index) {
          final item = items[index];

          return buildMenuItem(
            isCollapsed: isCollapsed,
            text: item.title,
            icon: item.icon,
            onClicked: () => selectItem(context, indexOffset + index),
          );
        },
      );

  void selectItem(BuildContext context, int index) {
    final navigateTo = (page) => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => page,
        ));

    Navigator.of(context).pop();

    switch (index) {
      case 0:
        () {};
        break;
      case 1:
        () {};
        break;
      case 2:
        () {};
        break;
      case 3:
        navigateTo(UserSettingsScreen());
        break;
      case 4:
        () {};
        break;
      case 5:
        () {};
        break;
    }
  }

  Widget buildMenuItem({
    required bool isCollapsed,
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final leading = Icon(icon, color: color);

    return Material(
      color: Colors.transparent,
      child: isCollapsed
          ? ListTile(
              title: leading,
              onTap: onClicked,
            )
          : ListTile(
              leading: leading,
              title: Text(text, style: TextStyle(color: color, fontSize: 16)),
              onTap: onClicked,
            ),
    );
  }

  Widget buildCollapseIcon(BuildContext context, bool isCollapsed) {
    final double size = 52;
    final icon = isCollapsed ? Icons.arrow_forward_ios : Icons.arrow_back_ios;
    final alignment = isCollapsed ? Alignment.center : Alignment.centerRight;
    final margin = isCollapsed ? null : EdgeInsets.only(right: 16);
    final width = isCollapsed ? double.infinity : size;

    return Container(
      alignment: alignment,
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          child: Container(
            width: width,
            height: size,
            child: Icon(icon, color: Colors.white),
          ),
          onTap: () {
            final provider =
                Provider.of<NavigationProvider>(context, listen: false);

            provider.toggleIsCollapsed();
          },
        ),
      ),
    );
  }

  Widget buildHeader(bool isCollapsed) => isCollapsed
      ? Image.asset(
          'assets/images/anavrintexto.png',
        )
      : Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/anavrinlogo.png',
                ))
          ],
        );
}
