import 'package:burger_city/core/models/category_item.dart';

class Dish{
  final String id;
  final String title;
  final String subtitle;
  final CategoryItem category;
  final double price;
  late  int? quantity;
  late  List<String>? notes;

  Dish({required this.id, required this.title, required this.subtitle,this.notes, this.quantity, required this.category,required this.price });
}