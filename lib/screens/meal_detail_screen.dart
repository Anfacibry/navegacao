import 'package:flutter/material.dart';
import 'package:navegacao/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({Key? key}) : super(key: key);

  Widget _createSectionTitle(BuildContext context, String titulo) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        titulo,
        style: Theme.of(context).textTheme.bodyText2,
      ),
    );
  }

  Widget _createSectionContainer(Widget widget) {
    return Container(
      height: 200,
      width: 350,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      child: widget,
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Meal;
    /*ModalRoute pega o argumanto da rata que está sendo passada e transformada
    em um meal*/
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl!,
                fit: BoxFit.cover,
              ),
            ),
            _createSectionTitle(context, "Ingredientes"),
            _createSectionContainer(
              ListView.builder(
                itemCount: meal.ingredients!.length,
                itemBuilder: (cxt, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 10),
                      child: Text(meal.ingredients![index]),
                    ),
                    color: Theme.of(context).accentColor,
                  );
                },
              ),
            ),
            _createSectionTitle(context, "Passos"),
            _createSectionContainer(
              ListView.builder(
                itemCount: meal.steps!.length,
                itemBuilder: (ctx, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text("${index + 1}"),
                        ),
                        title: Text(meal.steps![index]),
                      ),
                      Divider(
                        thickness: 2,
                      ),
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.of(context).pop(meal.title);
        },
      ),
    );
  }
}
