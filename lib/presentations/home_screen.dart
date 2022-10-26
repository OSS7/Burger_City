import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/core/models/category_item.dart';
import 'package:burger_city/features/users/providers/users.dart';
import 'package:burger_city/features/steper/screens/stepers.dart';
import 'package:burger_city/features/dishes/screens/meals_screen.dart';
import 'package:burger_city/features/dishes/widgets/dish_add_alert.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryItem> choices = [
    CategoryItem(id: '1', title: 'Add Task', image: ''),
    CategoryItem(id: '2', title: 'Manage item', image: ''),
    CategoryItem(id: '3', title: 'Tasks history', image: ''),
  ];

  List<Widget> views = [
    const StepperDemo(),
    Center(
      child: Text(
        'Coming Soon...',
        style: TextStyle(
            color: lightClr!, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Coming Soon...',
        style: TextStyle(
            color: lightClr!, fontSize: 30, fontWeight: FontWeight.bold),
      ),
    )
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final user = Provider.of<Users>(context, listen: true);
    return Scaffold(
      body: FutureBuilder(
          future: user.getUsers(),
          builder: (context, snap) {
            return Container(
              color: secondaryClr,
              child: Column(
                children: [
                  Expanded(child: views[selectedIndex]),
                  SizedBox(
                    width: size.width,
                    height: size.height * 0.07,
                    child: Center(
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: choices.length,
                        separatorBuilder: (context, item) => SizedBox(
                          width: size.width * 0.2,
                        ),
                        itemBuilder: (context, index) {
                          // shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          return Row(
                            children: [
                              Container(
                                padding: edge5,
                                // width: size.width *0.1,
                                decoration: BoxDecoration(
                                    color: selectedIndex != index
                                        ? null
                                        : primaryClr,
                                    borderRadius: radius25TopRightLeft),
                                child: FittedBox(
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(1),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              selectedIndex = index;
                                            });
                                          },
                                          icon: Icon(
                                              index == 0
                                                  ? Icons.category
                                                  : Icons.timelapse_outlined,
                                              color: lightClr),
                                        ),
                                      ),
                                      Text(
                                        choices[index].title,
                                        style: TextStyle(color: lightClr),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              // SizedBox(width: size.width * 0.1,)
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
