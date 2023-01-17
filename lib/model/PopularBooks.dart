import '/model/Books.dart';

class PopularBooks extends Books {
  PopularBooks({
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

final List<PopularBooks> popularBooksInfo = [
  PopularBooks(
      title: "The Way of the Nameless",
      image:
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/teal-and-orange-fantasy-book-cover-design-template-056106feb952bdfb7bfd16b4f9325c11.jpg",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
  PopularBooks(
      title: "The Power of You",
      image:
          "https://i.pinimg.com/originals/97/c4/99/97c499de2581f8cca7f415b4d85870a5.jpg",
      price: "1000 DZD",
      originalPrice: "1400 DZD"),
  PopularBooks(
      title: "The Glow",
      image:
          "https://i.pinimg.com/736x/4f/59/aa/4f59aaa78f898054f949351515875b3c--book-cover-design-book-design.jpg",
      price: "800 DZD",
      originalPrice: "1500 DZD"),
  PopularBooks(
      title: "The Happy Morning",
      image:
          "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1246347773i/5084733.jpg",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
  PopularBooks(
      title: "The Beauty of Living Twice",
      image:
          "https://hips.hearstapps.com/vader-prod.s3.amazonaws.com/1607102266-41AyT1XeDaL.jpg",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
  PopularBooks(
      title: "Undersea World",
      image:
          "https://www.edrawsoft.com/templates/images/seaworld-children-book-cover.png",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
  PopularBooks(
      title: "The Secrets",
      image:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSwf6U8c_AwOwZvz9CjfMEzikpESGwcNqSuxQ&usqp=CAU",
      price: "1200 DZD",
      originalPrice: "2000 DZD"),
];
