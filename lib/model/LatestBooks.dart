// ignore_for_file: file_names

import '/model/Books.dart';

class LatestBooks extends Books {
  LatestBooks({
    required String title,
    required String image,
    required String price,
    required String originalPrice,
  }) : super(
            title: title,
            image: image,
            price: price,
            originalPrice: originalPrice);
}

final List<LatestBooks> latestBooksInfo = [
  LatestBooks(
      title: "Surviving the White Gaze' \nby Rebecca Carroll",
      image:
          "https://d28hgpri8am2if.cloudfront.net/book_images/onix/cvr9781982116255/surviving-the-white-gaze-9781982116255_xlg.jpg",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
  LatestBooks(
      title: "The Creative Ideas",
      image:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/how-to-creative-ideas-book-cover-design-template-52f7ec58f53452b9b46a351cea1bd9a1_screen.jpg",
      price: "1000 DZD",
      originalPrice: "1400 DZD"),
  LatestBooks(
      title: "The Last Breath",
      image:
          "https://i.pinimg.com/originals/fc/52/3f/fc523fab7bcc161d8cca966ee974be64.png",
      price: "800 DZD",
      originalPrice: "1500 DZD"),
  LatestBooks(
      title: "The Prince of Thorns",
      image:
          "https://www.thecreativepenn.com/wp-content/uploads/2018/04/image1.jpeg",
      price: "1350 DZD",
      originalPrice: "1900 DZD"),
  LatestBooks(
      title: "The Beauty of Living Twice",
      image:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1607102266-41AyT1XeDaL.jpg",
      price: "1400 DZD",
      originalPrice: "1800 DZD"),
  LatestBooks(
      title: "Snow at Sunset",
      image:
          "https://wepik.com/storage/previews/1853935/conversions/minimalist-snow-winter-book-cover-r-908311156page1-thumb.jpg",
      price: "1000 DZD",
      originalPrice: "1300 DZD"),
  LatestBooks(
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      price: "2100 DZD",
      originalPrice: "3600 DZD"),
];
