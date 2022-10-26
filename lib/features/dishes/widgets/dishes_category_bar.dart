import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/core/lists.dart';
import 'package:burger_city/core/models/category_item.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:provider/provider.dart';

class DishesCategoryBar extends StatefulWidget {
  DishesCategoryBar({Key? key}) : super(key: key);

  @override
  State<DishesCategoryBar> createState() => _DishesCategoryBarState();
}

class _DishesCategoryBarState extends State<DishesCategoryBar> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      width: size.width * 0.27,
      height: size.height * 0.7,
      margin: const EdgeInsets.only(right: 50),
      decoration: BoxDecoration(color: secondaryClr, borderRadius: radius25All),
      child: Center(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color:
                      task.selectedIndex == index ? primaryClr : secondaryClr,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: ListTile(
                  style: ListTileStyle.drawer,
                  onTap: () {
                    task.changCategoryIndex(index);
                  },
                  title: Center(
                    child: Text(
                      categories[index].title,
                      style: TextStyle(
                        color:
                            task.selectedIndex != index ? lightClr : lightClr,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
