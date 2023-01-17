import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_book_store/provider/navigation_provider.dart';
import 'package:online_book_store/screen/CustomDrawer.dart';
import 'package:online_book_store/screen/search_screen.dart';
import 'package:provider/provider.dart';
import '/screen/MainScreen.dart';
import '/utils/utility.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Books',
          theme: ThemeData(brightness: Brightness.light, primaryColor: primary),
          home: MainPage(),
        ),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: Custom_Drawer(),
        appBar: AppBar(
          backgroundColor: primary,
          elevation: 0,
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
              )),
              GestureDetector(
                onTap: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SearchScreen()),
                  );
                }),
                child: Icon(
                  Icons.search_sharp,
                  color: appBgColor,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Badge(
                position: BadgePosition.topEnd(top: -10, end: -10),
                badgeContent: Text(
                  '5',
                  style: TextStyle(color: appBgColor),
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: appBgColor,
                ),
              ),
              SizedBox(
                width: 5,
              )
            ],
          ),
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu_sharp),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        body: MainScreen(),
      );
}
