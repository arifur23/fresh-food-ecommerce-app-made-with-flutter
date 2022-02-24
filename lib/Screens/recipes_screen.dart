import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Widgets/recipes_item.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Recipes',style: kStyleBig,),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              Column(
                children: const [
                  RecipesItem(imagePath: 'assets/Recipe1.jpg',),
                  RecipesItem(imagePath: 'assets/Recipe2.jpg'),
                  RecipesItem(imagePath: 'assets/Recipe3.jpg')
                ],
              )
            ]
          ))
        ],
      ),
    );
  }
}
