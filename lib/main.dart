import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:burger_city/features/order/providers/orders.dart';
import 'package:burger_city/features/users/providers/users.dart';
import 'package:burger_city/presentations/home_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Orders()),
        ChangeNotifierProvider(create: (context)=>Users()),
        // ChangeNotifierProvider(create: (context)=>Tasks()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.fuzzyBubblesTextTheme(

          ),
          primaryColor: Colors.red
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}

