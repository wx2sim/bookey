import 'dart:math';

import 'package:flutter/material.dart';
import '/model/Books.dart';
import '/utils/utility.dart';

import 'avatar_image.dart';

class BookCard extends StatelessWidget {
  BookCard({Key? key, required this.popularBook}) : super(key: key);
  final Books popularBook;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.only(left: 1, right: 1, top: 20, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          AvatarImage(
            popularBook.image,
            height: 190,
            width: 120,
            radius: 5,
            isSVG: false,
          ),
          SizedBox(
            height: 15,
          ),
          Text(popularBook.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
          SizedBox(
            height: 10,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: popularBook.price,
                    style: TextStyle(
                        fontSize: 16,
                        color: primary,
                        fontWeight: FontWeight.w500)),
                TextSpan(text: "    "),
                TextSpan(
                    text: popularBook.originalPrice,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w500)),
              ]))
        ],
      ),
    );
  }
}
