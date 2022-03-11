import 'package:equatable/equatable.dart';

class Product extends Equatable {

  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product(
      { required this.name,
        required this.category,
        required this.imageUrl,
        required this.price,
        required this.isRecommended,
        required this.isPopular});

  @override
  // TODO: implement props
  List<Object?> get props => [name,category,imageUrl,price,isRecommended,isPopular];

  static List<Product> products =  [
    const Product(
        name: 'Apples',
        category: 'Fruits & Vegetables',
        imageUrl: 'assets/images/apples.jpg',
        price: 100,
        isRecommended: true,
        isPopular: true
    ),
    const Product(
        name: 'Capsicum',
        category: 'Fruits & Vegetables',
        imageUrl: 'assets/images/capsicum.jpg',
        price: 10 ,
        isRecommended: true,
        isPopular: true
    ),
    const Product(
        name: 'Banana',
        category: 'Fruits & Vegetables',
        imageUrl: 'assets/images/banana.jpg',
        price: 40,
        isRecommended: true,
        isPopular: true
    ),
    const Product(
        name: 'Onion',
        category: 'Fruits & Vegetables',
        imageUrl: 'assets/images/onion.jpg',
        price: 60,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'Lays Chips',
        category: 'Snacks',
        imageUrl: 'assets/images/lays.jpg',
        price: 10 ,
        isRecommended: false,
        isPopular: true
    ),
    const Product(
        name: 'Mango',
        category: 'Fruits & Vegetables',
        imageUrl: 'assets/images/mango.jpg',
        price: 150 ,
        isRecommended: false,
        isPopular: true
    ),
    const Product(
        name: 'Amul Ice-cream',
        category: 'Bakery,Cakes & Dairy',
        imageUrl: 'assets/images/amul.jpg',
        price: 35,
        isRecommended: true,
        isPopular: true
    ),
  ];

}