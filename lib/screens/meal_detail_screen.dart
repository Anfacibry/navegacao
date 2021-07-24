import 'package:flutter/material.dart';
import 'package:navegacao/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    /*ModalRoute pega o argumanto da rata que está sendo passada e transformada
    em um meal*/
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title!),
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            child: Image.network(
              meal.imageUrl!,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              "Ingredientes",
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ),
          Container(
            height: 200,
            width: 350,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              itemCount: meal.ingredients!.length,
              itemBuilder: (cxt, index) {
                return Card(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                    child: Text(meal.ingredients![index]),
                  ),
                  color: Theme.of(context).accentColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
