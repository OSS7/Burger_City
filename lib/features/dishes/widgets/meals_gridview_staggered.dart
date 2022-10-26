import 'package:burger_city/features/dishes/widgets/dishes_gridview_staggered_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DishesGridViewStaggeredList extends StatelessWidget {
  final List list;

  DishesGridViewStaggeredList({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGrid.count(
        crossAxisCount: 1,
        children: List.generate(
          list.length,
          (index) => DishesGridViewStaggeredListItem(
            list: list,
            index: index,
          ),
        ),
      ),
    );
  }
}
