import 'package:flutter/material.dart';
import 'package:burger_city/features/dishes/models/dish.dart';
import 'package:burger_city/features/order/models/order.dart';
import 'package:burger_city/features/users/models/user.dart';

class Orders with ChangeNotifier {
  List<Task>? items;

  int selectedIndex = 0;

  changCategoryIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }

  User? user;
  List<Dish> dishes = [];
  List<String> notes = [];
  int quantity = 1;

  defineUser(User newUser) {
    user = newUser;
  }

  resetData() {
    dishes.clear();
    notes.clear();
    quantity = 1;
  }

  addTask() {
    items?.add(Task((items!.length + 1).toString(), user!, dishes, notes));
    notifyListeners();
  }
}
