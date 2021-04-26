import 'package:flutter/material.dart';
import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text(
          'You have no favorites yet - start adding some!',
        ),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeals.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            affordability: favoriteMeals[index].affordability,
            duration: favoriteMeals[index].duration,
            complexity: favoriteMeals[index].complexity,
            imageUrl: favoriteMeals[index].imageUrl,
            title: favoriteMeals[index].title,
            id: favoriteMeals[index].id,
          );
        },
      );
    }
  }
}
