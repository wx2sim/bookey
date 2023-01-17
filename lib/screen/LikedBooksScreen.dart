import 'package:flutter/material.dart';

class LikedBooksScreen extends StatefulWidget {
  const LikedBooksScreen({super.key});

  @override
  State<LikedBooksScreen> createState() => _LikedBooksScreenState();
}

class _LikedBooksScreenState extends State<LikedBooksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Text('Liked Books Screen'),
      )),
    );
  }
}
