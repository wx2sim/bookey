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
      width: 150,
      height: 320,
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.only(left: 1, right: 1, top: 20, bottom: 5),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          AvatarImage(
            popularBook.image,
            height: 220,
            width: 140,
            radius: 10,
            isSVG: false,
          ),
          Spacer(),
          Text(popularBook.title,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
          Spacer(),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: popularBook.price,
                    style: TextStyle(
                        fontSize: 14,
                        color: primary,
                        fontWeight: FontWeight.w500)),
                TextSpan(text: "    "),
                TextSpan(
                    text: popularBook.originalPrice,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        decoration: TextDecoration.lineThrough,
                        fontWeight: FontWeight.w500)),
              ]))
        ],
      ),
    );
  }
}
