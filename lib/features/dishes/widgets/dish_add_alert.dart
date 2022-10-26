import 'package:flutter/material.dart';
import 'package:burger_city/core/constant.dart';
import 'package:burger_city/features/dishes/models/dish.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:burger_city/core/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class DishAddAlert extends StatefulWidget {
  final Dish dish;

  const DishAddAlert({Key? key, required this.dish}) : super(key: key);

  @override
  State<DishAddAlert> createState() => _DishAddAlertState();
}

class _DishAddAlertState extends State<DishAddAlert> {
  List<TextEditingController> extras = [
    TextEditingController(),
  ];
  List<String> extrasText = [];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final task = Provider.of<Orders>(context);

    return Scaffold(
      backgroundColor: Colors.white12,
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: lightClr, borderRadius: radius25All),
          width: size.width * 0.6,
          height: size.height * 0.7,
          // color: Colors.white,
          padding: edge20,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.dish.title,
                      style: _headerTextStyle,
                    ),
                    Text(
                      'Dish Information',
                      style: _headerTextStyle,
                    ),
                    Container(
                      color: Colors.white,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * 0.7,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: extras.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: edge10,
                                      child: Row(
                                        children: [
                                          CustomTextField(
                                            controller: extras.isEmpty
                                                ? null
                                                : extras[index],
                                            hint: 'note',
                                            isSmall: true,
                                          ),
                                          SizedBox(
                                            width: 50,
                                            height: 40,
                                            child: MaterialButton(
                                              color: primaryClr,
                                              shape: const CircleBorder(),
                                              onPressed: () {
                                                setState(() {
                                                  extras.removeAt(index);
                                                });
                                              },
                                              child: const Text(
                                                '-',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            SizedBox(
                                height: size.height * 0.1,
                                child: MaterialButton(
                                  color: secondaryClr,
                                  shape: const CircleBorder(),
                                  onPressed: () {
                                    setState(() {
                                      extras.add(TextEditingController());
                                    });
                                  },
                                  child: Text(
                                    'Add note',
                                    style: TextStyle(color: lightClr),
                                  ),
                                )),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius: radius25All,
                                    color: Colors.black),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      if (task.quantity > 1) {
                                        task.quantity--;
                                      }
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.minimize,
                                    color: Colors.white,
                                  ),
                                )),
                            Text(
                              task.quantity.toString(),
                              style: const TextStyle(fontSize: 20),
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                    borderRadius: radius25All,
                                    color: Colors.black),
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      task.quantity++;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: SizedBox(
                        width: size.width * 0.2,
                        height: size.height * 0.1,
                        child: MaterialButton(
                          shape: const CircleBorder(),
                          color: secondaryClr,
                          onPressed: () {
                            extrasText.clear();

                            for (int i = 0; i < extras.length; i++) {
                              setState(() {
                                extrasText.add(extras[i].text.toString());
                              });
                            }
                            widget.dish.notes = extrasText;
                            widget.dish.quantity = task.quantity;
                            task.dishes.add(widget.dish);
                            // print(extrasText);
                            task.quantity = 1;
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'add',
                            style: TextStyle(color: lightClr),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final TextStyle _headerTextStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: secondaryClr,
  );
}
