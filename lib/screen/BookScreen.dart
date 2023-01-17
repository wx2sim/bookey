import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import '/model/LatestBooks.dart';
import '/model/PopularBooks.dart';
import '/utils/utility.dart';
import '/widgets/book_item.dart';

class BookScreen extends StatefulWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  _BookScreenState createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
                boxShadow: [
                  BoxShadow(
                    color: shadowColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              child: TabBar(
                indicatorColor: primary,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: primary,
                ),
                labelPadding: EdgeInsets.only(top: 8, bottom: 8),
                unselectedLabelColor: primary,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Text(
                    "New Books",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Popular Books",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: TabBarView(
                children: [
                  ListView(
                      scrollDirection: Axis.vertical,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 40),
                      children: getNewBooks()),
                  ListView(
                    scrollDirection: Axis.vertical,
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 15, right: 15, bottom: 40),
                    children: getPopularBooks(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  getNewBooks() {
    return List.generate(latestBooksInfo.length,
        (index) => BookItem(book: latestBooksInfo[index]));
  }

  getPopularBooks() {
    return List.generate(popularBooksInfo.length,
        (index) => BookItem(book: popularBooksInfo[index]));
  }
}
