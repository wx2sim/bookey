import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:online_book_store/model/PopularBooks.dart';
import 'package:online_book_store/utils/utility.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: appBgColor,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: primary,
                ),
              ),
            )),
            GestureDetector(
              onTap: () {
                print('click');
              },
              child: Icon(
                Icons.favorite_border,
                color: primary,
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text("More"),
            style: ElevatedButton.styleFrom(
              primary: primary,
              elevation: 0,
            ),
            onPressed: () {},
          ),
        ],
      )),
    );
  }
}
