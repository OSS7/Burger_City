import 'package:burger_city/core/models/category_item.dart';
import 'package:burger_city/features/dishes/models/dish.dart';
import 'package:burger_city/features/dishes/widgets/meals_gridview.dart';
import 'package:flutter/material.dart';


List<MealsGridView> views = [
  MealsGridView(list: burger1,categoryItem: categories[0],),
  MealsGridView(list: burger2,categoryItem: categories[1],),
  MealsGridView(list: burger3,categoryItem: categories[2],),
  MealsGridView(list: burger4,categoryItem: categories[3],),
  MealsGridView(list: hotDog1,categoryItem: categories[4],),
  MealsGridView(list: hotDog2,categoryItem: categories[5],),
  MealsGridView(list: doner1,categoryItem: categories[6],),
  MealsGridView(list: doner2,categoryItem: categories[7],),
  MealsGridView(list: snack1,categoryItem: categories[8],),
  MealsGridView(list: dips1,categoryItem: categories[9],),
  MealsGridView(list: tranken1,categoryItem: categories[10],),
  MealsGridView(list: folrida,categoryItem: categories[11],),
];

List<CategoryItem> categories = [
  CategoryItem(
    id: '1',
    title: 'Burger Menü',
    image: 'images/burger1.png',
  ),
  CategoryItem(id: '2', title: 'Burger', image: 'images/burger2.png'),
  CategoryItem(id: '3', title: 'Veggie Burger', image: 'images/burger3.png'),
  CategoryItem(
      id: '4', title: 'Veggie Burger Menü', image: 'images/burger3.png'),
  CategoryItem(id: '5', title: 'Hot Dogs', image: 'images/hotdog1.png'),
  CategoryItem(id: '6', title: 'Hot Dog Menü', image: 'images/hotdog2.png'),
  CategoryItem(id: '7', title: 'Döner', image: 'images/doner1.png'),
  CategoryItem(id: '8', title: 'Döner Menü', image: 'images/doner2.png'),
  CategoryItem(id: '9', title: 'Snacks', image: 'images/snack1.png'),
  CategoryItem(id: '10', title: 'Dips', image: 'images/dips1.png'),
  CategoryItem(id: '11', title: 'tränken', image: 'images/coc1.png'),
  CategoryItem(id: '12', title: 'Florida Eis', image: 'null'),
];

List<Dish> burger1 = [
  Dish(
    id: '5',
    title: 'Hamburger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    price: 13.20,
    category: categories[0],
  ),
  Dish(
    id: '6',
    title: 'Classic Cheese Burger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    price: 13.70,
    category: categories[0],
  ),
  Dish(
    id: '7',
    title: 'Germans Best Burger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Sauerkraut, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    price: 14.10,
    category: categories[0],
  ),
  Dish(
    id: '8',
    title: 'Mamas Lieblings Burger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Spiegelei, Röstzwiebeln, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    price: 15.10,
    category: categories[0],
  ),
  Dish(
    id: '10',
    title: '1001 Nacht Burger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Sucuk, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: categories[0],
    price: 14.40,
  ),
  Dish(
    id: '10',
    title: 'Tex Mex Burger (scharf) Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Jalapenos, Tomaten, roten Zwiebeln, hausgemachter scharfer Sauce und Dressing\n Wahl aus: \n \nmit Barbecuesauce, \n \nmit Cheddar, \n \nmit Chili-Cheesesauce, \n \nmit Chilisauce, \n \nmit Currysauce und mehr.',
    category: categories[0],
    price: 14.40,
  ),
  Dish(
    id: '10',
    title: 'Chicago Burger Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, Gouda, Bacon vom Rind, Tomaten, roten Zwiebeln, sauren Gurken, Barbequesauce und hausgemachtem Dressing \n Wahl aus: \n \nmit Barbecuesauce, \n \nmit Cheddar, \n \nmit Chili-Cheesesauce, \n \nmit Chilisauce, \n \nmit Currysauce und mehr.',
    category: categories[0],
    price: 15.10,
  ),
  Dish(
    id: '10',
    title: 'Burger in Blau Menü',
    subtitle:
        'Burger \n \nmit Rindfleisch, schwarzen Johannisbeeren, Pesto, blauem Schimmelkäse, Walnüssen, Tomaten und roten Zwiebeln\n Wahl aus: \n \nmit Barbecuesauce, \n \nmit Cheddar, \n \nmit Chili-Cheesesauce, \n \nmit Chilisauce, \n \nmit Currysauce und mehr.',
    category: categories[0],
    price: 14.90,
  ),
  Dish(
    id: '10',
    title: 'Türkisch Deluxe Burger Menü',
    subtitle:
        'Burger \nmit Rindfleisch, Gouda, Spiegelei, Sucuk, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing\nWahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[0],
    price: 15.40,
  ),
  Dish(
    id: '10',
    title: 'Crispy Burger Menü',
    subtitle:
        'Burger \nmit paniertem Hähnchen, Tomaten, Mayonnaise, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing\nWahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[0],
    price: 13.90,
  ),
  Dish(
    id: '10',
    title: 'Chicken Nugget Burger Menü',
    subtitle: 'W  ahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[0],
    price: 12.50,
  ),
];

List<Dish> burger2 = [
  Dish(
    id: '11',
    title: 'Hamburger',
    subtitle:
        '\nmit Rindfleisch, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: CategoryItem(
      id: '5',
      title: 'Burger Menü',
      image: 'images/burgers/burger1.jpg',
    ),
    price: 15.10,
  ),
  Dish(
    id: '11',
    title: 'Classic Cheese Burger',
    subtitle:
        '\nmit Rindfleisch, Gouda, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: CategoryItem(
      id: '5',
      title: 'Burger Menü',
      image: 'images/burgers/burger1.jpg',
    ),
    price: 7.40,
  ),
  Dish(
    id: '11',
    title: '  Germans Best Burger',
    subtitle:
        '  \nmit Rindfleisch, Gouda, Sauerkraut, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: CategoryItem(
      id: '5',
      title: 'Burger Menü',
      image: 'images/burgers/burger1.jpg',
    ),
    price: 7.90,
  ),

  Dish(
    id: '11',
    title: 'Mamas Lieblings Burger',
    subtitle:
        '\nmit Rindfleisch, Gouda, Spiegelei, Röstzwiebeln, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: CategoryItem(
      id: '5',
      title: 'Burger Menü',
      image: 'images/burgers/burger1.jpg',
    ),
    price: 8.80,
  ),
  Dish(
    id: '11',
    title: '1001 Nacht Burger',
    subtitle:
        ' \nmit Rindfleisch, Gouda, Sucuk, Tomaten, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: categories[1],
    price: 8.10,
  ),
  Dish(
    id: '11',
    title: 'Tex Mex Burger (scharf)',
    subtitle:
        '  \nmit Rindfleisch, Gouda, Jalapenos, Tomaten, roten Zwiebeln, hausgemachter scharfer Sauce und Dressing',
    category: categories[1],
    price: 8.10,
  ),
  Dish(
    id: '11',
    title: '  Chicago Burger',
    subtitle:
        '  \nmit Rindfleisch, Gouda, Bacon vom Rind, Tomaten, roten Zwiebeln, sauren Gurken, Barbequesauce und hausgemachtem Dressing',
    category: categories[1],
    price: 8.80,
  ),
  Dish(
    id: '11',
    title: '  Burger in Blau',
    subtitle:
        '  \nmit Rindfleisch, schwarzen Johannisbeeren, Pesto, blauem Schimmelkäse, Walnüssen, Tomaten und roten Zwiebeln',
    category: categories[1],
    price: 8.60,
  ),
  Dish(
    id: '11',
    title: '  Türkisch Deluxe Burger',
    subtitle:
        '  \nmit Rindfleisch, Gouda, Spiegelei, Sucuk, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: categories[1],
    price: 9.10,
  ),
  Dish(
    id: '11',
    title: 'Crispy Burger',
    subtitle:
        '  \nmit paniertem Hähnchen, Tomaten, Mayonnaise, roten Zwiebeln, sauren Gurken, Lolo Bionda und hausgemachtem Dressing',
    category: categories[1],
    price: 7.60,
  ),
  Dish(
    id: '11',
    title: '  Chicken Nugget Burger',
    subtitle: '',
    category: categories[1],
    price: 6.20,
  ),
];

List<Dish> burger3 = [
  Dish(
    id: '11',
    title: 'Gemüse Burger',
    subtitle:
        'Veggie-Burger \nmit Gemüse-Patty \n Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 7.20,
  ),
  Dish(
    id: '11',
    title: 'Mozzarella Burger',
    subtitle:
        'Veggie-Burger \nmit Mozzarella-Patty \n Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 7.30,
  ),
  Dish(
    id: '11',
    title: 'Halloumi Burger',
    subtitle:
        'Veggie-Burger \nmit Halloumi-Patty \n Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 7.30,
  ),
  Dish(
    id: '11',
    title: 'Falafel Burger',
    subtitle:
        'Veggie-Burger \nmit Kichererbsen-Patty \nWahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 7.30,
  )
];

List<Dish> burger4 = [
  Dish(
    id: '11',
    title: 'Gemüse Burger Menü',
    subtitle:
        'Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 3.50,
  ),
  Dish(
    id: '11',
    title: 'Mozzarella Burger Menü',
    subtitle:
        'Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 13.60,
  ),
  Dish(
    id: '11',
    title: 'Halloumi Burger Menü',
    subtitle:
        'Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 13.60,
  ),
  Dish(
    id: '11',
    title: 'Falafel Burger Menü',
    subtitle:
        'Wahl aus: \nmit Barbecuesauce, \nmit Cheddar, \nmit Chili-Cheesesauce, \nmit Chilisauce, \nmit Currysauce und mehr.',
    category: categories[1],
    price: 13.60,
  ),
];

List<Dish> hotDog1 = [
  Dish(
    id: '11',
    title: 'Classic Danish Hot Dog',
    subtitle:
        '\nmit Senf, Gurken, Haus-Dressing und Röstzwiebeln \n Wahl aus: \nmit Broccoli Nuggets, \nmit Chicken Nuggets, \nmit Chili-Cheese Nuggets, \nmit Curly Potatoes, \nmit Kartoffelecken und mehr.',
    category: categories[1],
    price: 3.40,
  ),
  Dish(
    id: '11',
    title: 'New York Hot Dog',
    subtitle: '\nmit Sauerkraut, Haus-Dressing und Röstzwiebeln',
    category: categories[1],
    price: 3.70,
  ),
  Dish(
    id: '11',
    title: 'Mexican Hot Dog (scharf)',
    subtitle:
        '\nmit hausgemachter, scharfer Sauce, Jalapenos und Röstzwiebeln\n  Wahl aus: \nmit Broccoli Nuggets, \nmit Chicken Nuggets, \nmit Chili-Cheese Nuggets, \nmit Curly Potatoes, \nmit Kartoffelecken und mehr.',
    category: categories[1],
    price: 4.20,
  ),
];

List<Dish> hotDog2 = [
  Dish(
    id: '11',
    title: 'Classic Danish Hot Dog Menü',
    subtitle:
        'Wahl aus: Coca Cola 0,33l, Coca Cola Light 0,33l, Fanta 0,33l, Fritz Apfelschorle 0,33l, Fritz Kola 0,33l und mehr.',
    category: categories[1],
    price: 13.10,
  ),
  Dish(
    id: '11',
    title: 'New York Hot Dog Menü',
    subtitle:
        'Wahl aus: Coca Cola 0,33l, Coca Cola Light 0,33l, Fanta 0,33l, Fritz Apfelschorle 0,33l, Fritz Kola 0,33l und mehr.',
    category: categories[1],
    price: 13.70,
  ),
  Dish(
    id: '11',
    title: 'Mexican Hot Dog Menü (scharf)',
    subtitle:
        'Wahl aus: Coca Cola 0,33l, Coca Cola Light 0,33l, Fanta 0,33l, Fritz Apfelschorle 0,33l, Fritz Kola 0,33l und mehr.',
    category: categories[1],
    price: 14.50,
  ),
];
List<Dish> doner1 = [
  Dish(
    id: '11',
    title: 'Dürüm',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 7.80,
  ),
  Dish(
    id: '11',
    title: 'Dürüm XL',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 8.80,
  ),
  Dish(
    id: '11',
    title: 'Döner Box',
    subtitle:
        'Wahl aus: \nmit Guacamole, \nmit Knoblauchsauce, \nmit Pesto, \nmit Sauce, scharf, nur Kräutersauce und mehr.',
    category: categories[1],
    price: 7.20,
  ),
  Dish(
    id: '11',
    title: 'Dönerteller',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 12.00,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza',
    subtitle:
        'Wahl aus: \nmit Guacamole, \nmit Knoblauchsauce, \nmit Pesto, \nmit Sauce, scharf, nur Kräutersauce und mehr.',
    category: categories[1],
    price: 2.50,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza \nmit Salat',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 3.50,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza \nmit Fleisch',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 7.80,
  ),
];
List<Dish> doner2 = [
  Dish(
    id: '11',
    title: 'Dürüm Menü',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 12.80,
  ),
  Dish(
    id: '11',
    title: 'Dürüm XL Menü',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 13.80,
  ),
  Dish(
    id: '11',
    title: 'Döner Box Menü',
    subtitle:
        'Wahl aus: \nmit Guacamole, \nmit Knoblauchsauce, \nmit Pesto, \nmit Sauce, scharf, nur Kräutersauce und mehr.',
    category: categories[1],
    price: 12.20,
  ),
  Dish(
    id: '11',
    title: 'Dönerteller Menü',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 13.80,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza Menü',
    subtitle:
        'Wahl aus: \nmit Guacamole, \nmit Knoblauchsauce, \nmit Pesto, \nmit Sauce, scharf, nur Kräutersauce und mehr.',
    category: categories[1],
    price: 8.0,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza \nmit Salat Menü',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 9.50,
  ),
  Dish(
    id: '11',
    title: 'Türkische Pizza \nmit Fleisch Menü',
    subtitle:
        'Wahl aus: \nmit Eisbergsalat, \nmit Gurken, \nmit Rotkohl, \nmit Tomaten, \nmit Zwiebeln und mehr.',
    category: categories[1],
    price: 12.80,
  ),
];

List<Dish> snack1 = [
  Dish(
    id: '11',
    title: 'Pommes frites XL',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.40,
  ),
  Dish(
    id: '11',
    title: 'Kartoffelecken',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.40,
  ),
  Dish(
    id: '11',
    title: 'Sweet Potatoes',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 5.40,
  ),
  Dish(
    id: '11',
    title: 'Curly Fries',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.50,
  ),
  Dish(
    id: '11',
    title: 'Amerikanischer Krautsalat',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 3.60,
  ),
  Dish(
    id: '11',
    title: 'Zwiebelringe (6 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.40,
  ),
  Dish(
    id: '11',
    title: 'Zwiebelringe (12 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 7.70,
  ),
  Dish(
    id: '11',
    title: 'Chicken Nuggets (6 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.90,
  ),
  Dish(
    id: '11',
    title: 'Chicken Nuggets (12 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 9.50,
  ),
  Dish(
    id: '11',
    title: 'Chili-Cheese-Nuggets (6 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.70,
  ),
  Dish(
    id: '11',
    title: 'Chili-Cheese-Nuggets (12 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 9.50,
  ),
  Dish(
    id: '11',
    title: 'Broccoli-Nuggets (6 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 4.80,
  ),
  Dish(
    id: '11',
    title: 'Broccoli-Nuggets (12 Stück)',
    subtitle: 'Wahl aus: \nmit Ketchup und \nmit Mayonnaise.',
    category: categories[1],
    price: 9.20,
  ),
];
List<Dish> dips1 = [
  Dish(
    id: '11',
    title: '  Mayonnaise',
    subtitle: '',
    category: categories[1],
    price: 0.40,
  ),
  Dish(
    id: '11',
    title: '  Ketchup',
    subtitle: '',
    category: categories[1],
    price: 0.40,
  ),
  Dish(
    id: '11',
    title: '  Barbecuesauce',
    subtitle: '',
    category: categories[1],
    price: 0.90,
  ),
  Dish(
    id: '11',
    title: '  Chili-Cheesesauce',
    subtitle: '',
    category: categories[1],
    price: 1.20,
  ),
  Dish(
    id: '11',
    title: '  Sour Cream',
    subtitle: '',
    category: categories[1],
    price: 0.60,
  ),
  Dish(
    id: '11',
    title: '  Guacamole',
    subtitle: '',
    category: categories[1],
    price: 1.60,
  ),
  Dish(
    id: '11',
    title: '  Currysauce',
    subtitle: '',
    category: categories[1],
    price: 0.60,
  ),
  Dish(
    id: '11',
    title: '  Sweet-Chili-Sauce',
    subtitle: '',
    category: categories[1],
    price: 0.80,
  ),
];
List<Dish> tranken1 = [
  Dish(
    id: '11',
    title: '  Coca Cola 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.70,
  ),
  Dish(
    id: '11',
    title: '  Coca Cola light 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.70,
  ),
  Dish(
    id: '11',
    title: '  Fanta 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.70,
  ),
  Dish(
    id: '11',
    title: '  Sprite 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.70,
  ),
  Dish(
    id: '11',
    title: '  Mezzo Mix 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.70,
  ),
  Dish(
    id: '11',
    title: '  Fritz Kola 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.80,
  ),
  Dish(
    id: '11',
    title: '  Fritz Orange 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.80,
  ),
  Dish(
    id: '11',
    title: '  Fritz Melone 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.80,
  ),
  Dish(
    id: '11',
    title: '  Fritz Mischmasch 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.80,
  ),
  Dish(
    id: '11',
    title: '  Fritz Apfelschorle 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.80,
  ),
  Dish(
    id: '11',
    title: '  Wasser still 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.20,
  ),
  Dish(
    id: '11',
    title: '  Wasser \nmit Kohlensäure 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.20,
  ),
  Dish(
    id: '11',
    title: '  Fuze Tea Pfirsich 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.60,
  ),
  Dish(
    id: '11',
    title: '  Fuze Tea Zitrone 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.60,
  ),
  Dish(
    id: '11',
    title: '  Fuze Hibiskus-Pfirsisch 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.60,
  ),
  Dish(
    id: '11',
    title: '  Fuze Grüntee 0,33l',
    subtitle: '',
    category: categories[1],
    price: 2.60,
  ),
];

List<Dish> folrida = [
  Dish(
    id: '11',
    title: '  Florida Eis Vanille 500ml',
    subtitle: '  Glutenfreies Vanille-Milcheis',
    category: categories[1],
    price: 6.50,
  ),
];
