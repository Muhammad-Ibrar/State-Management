import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/count_provider.dart';
import 'package:provider_prac/provider/example_one_provider.dart';
import 'package:provider_prac/provider/favourite_provider.dart';
import 'package:provider_prac/screens/count_example.dart';
import 'package:provider_prac/screens/example_one.dart';
import 'package:provider_prac/screens/favourite/favourite_screen.dart';
import 'package:provider_prac/statefull_widget.dart';
import 'package:provider_prac/stateless_widget.dart';
import 'package:provider_prac/why_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => FavouriteItemProvider()),
        ],
      child:  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:const FavouriteScreen(),
    ),
    );




  }
}


