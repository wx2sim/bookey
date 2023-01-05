import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:online_book_store/model/categoriesList.dart';
import 'package:online_book_store/widgets/book_categories.dart';
import '/model/LatestBooks.dart';
import '/model/PopularBooks.dart';
import '/utils/utility.dart';
import '/widgets/avatar_image.dart';
import '/widgets/book_card.dart';
import '/widgets/book_cover.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            Container(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Container(
                    child: getHeaderBlock(),
                  ),
                  Positioned(
                      top: 140,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 300,
                        child: getPopularBooks(),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Text(
                      "Categories",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: getcategories(),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Text(
                      "Latest Books",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: getLatestBooks(),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getHeaderBlock() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
              color: primary),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 15),
                child: Text(
                  "Hi, Wassim",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 23,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 35, right: 15),
                child: Text(
                  "Welcome to Bookey!",
                  style: TextStyle(
                      color: secondary,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    "Popular Books",
                    style: TextStyle(
                        color: secondary,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
        Container(
          height: 150,
          color: primary,
          child: Container(
            decoration: BoxDecoration(
                color: appBgColor,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(100))),
          ),
        )
      ],
    );
  }

  getPopularBooks() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 5, left: 15),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            popularBooksInfo.length,
            (index) => BookCard(
                  popularBook: popularBooksInfo[index],
                )),
      ),
    );
  }

  getLatestBooks() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(latestBooksInfo.length,
            (index) => BookCover(book: latestBooksInfo[index])),
      ),
    );
  }

  getcategories() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 5),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(bookCategoriesInfo.length,
            (index) => BookCategory(categorie: bookCategoriesInfo[index])),
      ),
    );
  }
}
