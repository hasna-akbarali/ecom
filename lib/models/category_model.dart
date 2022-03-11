import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name,required this.imageUrl});

  @override
  List<Object?> get props => [name,imageUrl];

  static List<Category> categories =  [
     const Category(
        name: 'Fruits & Vegetables',
        imageUrl: 'assets/images/fruits.jpg'),
     const Category(
        name: 'Eggs,Meat & Fish',
        imageUrl : 'assets/images/fish.jpg'),
     const Category(
        name: 'Food Grains & Masala',
        imageUrl: 'assets/images/spices.jpg'),
    const Category(
      name: 'Cleaning & Household', 
      imageUrl: 'assets/images/cleaning.jpg'),
    const Category(
      name: 'Snacks',
      imageUrl: 'assets/images/snacks.jpg'),
     const Category(
        name: 'Bakery, Cakes & Dairy',
        imageUrl: 'assets/images/bakery.jpg')
  ];
}