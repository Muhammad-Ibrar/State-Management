import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/auth_provider.dart';
import 'package:provider_prac/provider/count_provider.dart';
import 'package:provider_prac/provider/example_one_provider.dart';
import 'package:provider_prac/provider/favourite_provider.dart';
import 'package:provider_prac/provider/theme_changer_provider.dart';
import 'package:provider_prac/screens/count_example.dart';
import 'package:provider_prac/screens/dark_theme.dart';
import 'package:provider_prac/screens/example_one.dart';
import 'package:provider_prac/screens/favourite/favourite_screen.dart';
import 'package:provider_prac/screens/favourite/login.dart';
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
          ChangeNotifierProvider(create: (_) => ThemeChanger()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
        ],
      child: Builder(
          builder: (BuildContext context){
            final themeChanger = Provider.of<ThemeChanger>(context);
        return  MaterialApp(
          title: 'Flutter Demo',
          themeMode:themeChanger.themeMode,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            appBarTheme: AppBarTheme(
              color: Colors.teal
            )
          ),
          home:const LoginScreen(),
        );
      })
    );




  }
}


