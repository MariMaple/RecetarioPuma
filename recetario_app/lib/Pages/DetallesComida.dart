import 'package:flutter/material.dart';
import 'package:recetario/Model/Recipe.dart';

class DetallesComida extends StatelessWidget {
  final Recipe recipe;

  DetallesComida(this.recipe);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Image.asset(recipe.imageRecipe),
            Text(
              recipe.title,
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Ingredientes:",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
