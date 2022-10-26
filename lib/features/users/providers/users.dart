import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:burger_city/features/users/models/user.dart';

class Users with ChangeNotifier{
  List<User> items=[];
  final box = GetStorage();
  Future getUsers() async{
    String users = box.read('users');
    users.isEmpty ? null:
     items = User.decode(box.read('users'));
    List.generate(items.length, (index) => print(items[index].id));
  }
  insertUser(User user){
    List<User> foundedUser = items.where((element) => element.id == user.id).toList();
    if(foundedUser.isEmpty){
    items.add(user);
    box.write('users', User.encode(items));
    print('done');
    }
  }
}