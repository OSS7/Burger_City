import 'package:burger_city/features/dishes/widgets/meals_gridview_staggered.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/core/models/category_item.dart';
import 'package:burger_city/features/dishes/widgets/dish_add_alert.dart';

class MealsGridView extends StatefulWidget {
  final List list;
  final CategoryItem categoryItem;

  MealsGridView({Key? key, required this.list, required this.categoryItem})
      : super(key: key);

  @override
  State<MealsGridView> createState() => _MealsGridViewState();
}

class _MealsGridViewState extends State<MealsGridView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          widget.categoryItem.image == 'null'
              ? const SizedBox()
              : Container(
                  width: size.width,
                  height: size.height * 0.15,
                  margin: edge10,
                  decoration: BoxDecoration(
                      borderRadius: radius25All,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          widget.categoryItem.image,
                        ),
                      )),
                ),
          Expanded(
            child: SingleChildScrollView(
              child: DishesGridViewStaggeredList(
                list: widget.list,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
