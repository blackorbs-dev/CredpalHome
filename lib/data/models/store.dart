import 'dart:ui';

class Store{
  final String name;
  final String image;
  final bool isOnline;
  final Color? color;

  const Store({
    required this.name,
    required this.image,
    required this.isOnline,
    this.color,
  });
}