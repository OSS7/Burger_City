import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/dishes/widgets/dish_add_alert.dart';
import 'package:flutter/material.dart';

class DishesGridViewStaggeredListItem extends StatelessWidget {
  final List list;
  final int index;

   DishesGridViewStaggeredListItem(
      {Key? key, required this.list, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: edge20,
      margin: edge5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: secondaryClr!,
      ),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) {
                return DishAddAlert(dish: list[index]);
              });
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text(list[index].title.toString(), style: _titleTextStyle),
              ),
            ),
            Text(
              list[index].subtitle.toString(),
              style: TextStyle(color: lightClr, fontSize: 13),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '${list[index].price.toString()} \$',
                  style: TextStyle(
                      color: primaryClr,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final TextStyle _titleTextStyle =
      TextStyle(fontSize: 15, color: lightClr, fontWeight: FontWeight.bold);
}
