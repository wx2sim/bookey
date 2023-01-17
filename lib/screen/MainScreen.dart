import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_book_store/screen/LikedBooksScreen.dart';
import 'package:online_book_store/screen/ProfileScreen.dart';
import 'package:online_book_store/widgets/vertical_card_pager.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '/screen/BookScreen.dart';
import '/screen/HomeScreen.dart';
import '/screen/UserSettingsScreen.dart';
import '/utils/utility.dart';
import 'CustomDrawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int activeTab = 0;
  late PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: primary, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset:
            true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows:
            true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          colorBehindNavBar: Colors.transparent,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 400),
        ),
        navBarStyle: NavBarStyle.style6,
      ),
    );
  }

  List<Widget> _buildScreens() {
    return [
      HomeScreen(),
      BookScreen(),
      VerticalCardPagerDemo(),
      LikedBooksScreen(),
      ProfileScreen(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home),
        activeColorPrimary: secondary,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.my_library_books),
        activeColorPrimary: secondary,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.explore_rounded),
        activeColorPrimary: secondary,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.heart),
        activeColorPrimary: secondary,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.person),
        activeColorPrimary: secondary,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }
}
// }
