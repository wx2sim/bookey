import 'dart:math';

import 'package:flutter/material.dart';
import '/model/Books.dart';
import '/utils/utility.dart';

import 'avatar_image.dart';

class BookCover extends StatelessWidget {
  BookCover({Key? key, required this.book}) : super(key: key);
  final Books book;

  @override
  Widget build(BuildContext context) {
    double _width = 110, _height = 170;
    return Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          children: [
            Stack(children: [
              Container(
                  padding: EdgeInsets.only(bottom: 50, right: 40),
                  width: _width,
                  height: _height,
                  child: Container(
                    width: _width / 2,
                    height: _height / 2,
                  )),
              Container(
                width: _width,
                height: _height,
                padding: EdgeInsets.all(8),
                child: AvatarImage(
                  book.image,
                  isSVG: false,
                  radius: 8,
                ),
              )
            ]),
            SizedBox(
              height: 8,
            ),
            Text(
              book.price,
              style: TextStyle(fontWeight: FontWeight.w500),
            )
          ],
        ));
  }
}
