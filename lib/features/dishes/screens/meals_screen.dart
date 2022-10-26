import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/core/lists.dart';
import 'package:burger_city/core/models/category_item.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:burger_city/features/dishes/widgets/dishes_category_bar.dart';
import 'package:burger_city/features/dishes/widgets/meals_gridview.dart';
import 'package:provider/provider.dart';
import 'package:side_navigation/side_navigation.dart';

class MealsApp extends StatefulWidget {
  const MealsApp({Key? key}) : super(key: key);

  @override
  State<MealsApp> createState() => _MealsAppState();
}

class _MealsAppState extends State<MealsApp> {

  @override
  Widget build(BuildContext context) {


    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);

    return Center(
      child: SizedBox(
        height: size.height * 0.75,
        child: Row(
          children: [
            DishesCategoryBar(
            ),
            Expanded(
              child: views.elementAt(task.selectedIndex),
            )
          ],
        ),
      ),
    );
  }
}
