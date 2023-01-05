// ignore_for_file: file_names

import 'package:online_book_store/model/categories.dart';

class CatgoriesList extends Categories {
  CatgoriesList({
    required String title,
    required String image,
  }) : super(
          title: title,
          image: image,
        );
}

final List<CatgoriesList> bookCategoriesInfo = [
  CatgoriesList(
    title: "Stories",
    image:
        'https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
  ),
  CatgoriesList(
    title: "Business",
    image:
        "https://images.unsplash.com/39/lIZrwvbeRuuzqOoWJUEn_Photoaday_CSD%20(1%20of%201)-5.jpg?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
  ),
  CatgoriesList(
    title: "General",
    image:
        'https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
  ),
  CatgoriesList(
    title: "Health",
    image:
        "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80",
  ),
  CatgoriesList(
    title: "Science",
    image:
        "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80",
  ),
];
