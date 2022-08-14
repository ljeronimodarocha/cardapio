import 'package:flutter/material.dart';

import './screens/categories_screen.dart';
import './screens/categories_meals_screen.dart';
import './utils/app_routes.dart';

//modulo 7 aula 14
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              titleMedium: const TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
              ),
            ),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
            .copyWith(secondary: Colors.amber),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.HOME: (ctx) => CategoriesScreen(),
        AppRoutes.CATEGORIES_MEALS: (ctx) => CategoriesMealsScreen()
      },
      //home: const CategoriesScreen(),
      //initialRoute: ,
      // routes: {
      //   '/': (ctx) => const CategoriesScreen(),
      //   '/categories-meals': (ctx) => CategoriesMealsScreen(),
      // },
    );
  }
}
