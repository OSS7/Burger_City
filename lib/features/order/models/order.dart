import 'package:burger_city/features/dishes/models/dish.dart';
import 'package:burger_city/features/users/models/user.dart';

class Task{
  final String id;
  final User user;
  final List<Dish> dishes;
  final List<String> notes;

  Task(this.id, this.user, this.dishes, this.notes);


}