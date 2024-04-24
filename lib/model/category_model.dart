import 'package:equatable/equatable.dart';

class Category extends Equatable{
  final String name ;
  final String imageURL;
  const Category({
    required this.name,
    required this.imageURL
  });



  @override
  List<Object?> get props => [name,imageURL];

  static List<Category> imageSliders = [
    Category(name: "Air Jordan 4", imageURL: "/assets/image/jordan4.jpeg"),
    Category(name: "Air jorann 1", imageURL: "/assets/image/jordan1.jpeg"),
    Category(name: "Maillot memphis", imageURL: "/assets/image/memphis.jpeg"),
    Category(name: "maillot AcMilan", imageURL: "/assets/image/acmilan.jpeg"),
    Category(name: "Adidas", imageURL: "/assets/image/adidas.jpeg"),
    Category(name: "Nemezis", imageURL: "/assets/image/nemezis.jpeg"),
    Category(name: "Bras", imageURL: "/assets/image/bras.jpeg"),
  ];
}