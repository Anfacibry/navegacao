import 'package:flutter/material.dart';
import 'package:navegacao/screens/meal_detail_screen.dart';
import 'package:navegacao/screens/tab_screen.dart';
import 'package:navegacao/utils/rotas_nomeadas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DeliMeals',
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          fontFamily: 'Raleway',
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          textTheme: TextTheme(
              headline6: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              bodyText2: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        initialRoute: AppRotas.HOME,
        routes: {
          AppRotas.HOME: (ctx) => TabsScreen(),
          AppRotas.MEAL_DETAIL: (ctx) => MealDetailScreen(),
        });
  }
}
