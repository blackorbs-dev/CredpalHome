class Product{
  final String name;
  final int price;
  final int originalPrice;
  final String image;
  final String? storeLogo;

  const Product({
    required this.name,
    required this.price,
    required this.originalPrice,
    required this.image,
    this.storeLogo,
  });
}