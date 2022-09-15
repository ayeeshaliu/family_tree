import 'package:family_tree/HomeScreenTab/familyRecipe/dummyData.dart';
import 'package:flutter/material.dart';

class allFamilyRecipes extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Family Recipes"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
      ),
      body: ListView(
        children:
          DUMMY_MEALS.map((mealData) => RecipeItem(mealData.imageUrl, mealData.title)).toList(),
      ),
    );
  }
}

class RecipeItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const RecipeItem (this.imageUrl, this.title,);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Container(
        height: 100,
        width: 327,
        child: Row(
          children: [
            Image.network(imageUrl),
            Text(title),

          ],
        ),
      ),
    );
  }
}

