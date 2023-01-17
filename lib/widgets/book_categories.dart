import 'dart:math';

import 'package:flutter/material.dart';
import 'package:online_book_store/model/categories.dart';
import '/model/Books.dart';
import '/utils/utility.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'avatar_image.dart';

class BookCategory extends StatelessWidget {
  BookCategory({Key? key, required this.categorie}) : super(key: key);

  final Categories categorie;

  @override
  Widget build(BuildContext context) {
    double _width = 140, _height = 60;
    return Container(
        child: Column(children: [
      GestureDetector(
        onTap: () {
          print(categorie.title);
        },
        child: Container(
          margin: EdgeInsets.only(right: 16),
          child: Stack(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: CachedNetworkImage(
                    imageUrl: categorie.image,
                    width: 130,
                    height: 70,
                    fit: BoxFit.cover,
                  )),
              Container(
                alignment: Alignment.center,
                width: 130,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Colors.black26,
                ),
                child: Text(
                  categorie.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
