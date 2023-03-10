import 'dart:math';
import 'package:flutter/material.dart';
import '/model/Books.dart';
import '/utils/utility.dart';
import 'avatar_image.dart';

class BookItem extends StatelessWidget {
  BookItem({Key? key, required this.book}) : super(key: key);
  final Books book;

  @override
  Widget build(BuildContext context) {
    double _width = 120, _height = 150;
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: Row(
          children: [
            Stack(children: [
              Container(
                width: _width,
                height: _height * 1.2,
                padding: EdgeInsets.all(8),
                child: AvatarImage(
                  book.image,
                  isSVG: false,
                  radius: 8,
                ),
              )
            ]),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  maxLines: 2,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 12,
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: book.price,
                      style: TextStyle(
                          fontSize: 14,
                          color: primary,
                          fontWeight: FontWeight.w500)),
                  TextSpan(text: "   "),
                  TextSpan(
                      text: book.originalPrice,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.w500)),
                ]))
              ],
            ),
            Spacer(),
            Icon(Icons.info_outline, color: primary)
          ],
        ));
  }
}
