import 'dart:convert';

class User{
  final String id;
  final String name;
  final String address;
  final String number;

  User({required this.id, required this.name, required this.address, required this.number});


  factory User.fromJson(Map<String, dynamic> jsonData) {
    return User(
      id: jsonData['objectId'],
      number: jsonData['number'],
      name: jsonData['name'],
      address: jsonData['address'],
    );
  }

  static Map<String, dynamic>? toMap(User file) => {
    'objectId': file.id,
    'number': file.number,
    'name': file.name,
    'address': file.address,
  };

  static String encode(List<User> user) => json.encode(
    user.map<Map<String, dynamic>?>((users) => User.toMap(users)).toList(),
  );

  static List<User> decode(String user) => (json.decode(user) as List<dynamic>)
      .map<User>((item) => User.fromJson(item))
      .toList();
}