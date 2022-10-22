import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:recipe/components/recipe_card.dart';

class Recipe {
    final String title;
    final String subtitle;
    Recipe(this.title,this.subtitle);
}


class RecipeListView extends StatelessWidget {
  RecipeListView({super.key});
  final RecipeList = [
      Recipe('spaghetti','tasty pasta for your tummy'),
      Recipe('spaghetti','tasty pasta for your tummy'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
        children:
            RecipeList.map((r) => RecipeCard(r.title, r.subtitle)).toList());
  }
}
