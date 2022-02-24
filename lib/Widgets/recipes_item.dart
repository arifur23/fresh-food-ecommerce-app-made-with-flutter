
import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/single_recipe.dart';

class RecipesItem extends StatelessWidget {
  const RecipesItem({
    Key? key, required this.imagePath,
  }) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => SingleRecipeScreen(imagePath: imagePath,)));
        },
        child: Container(
          height: 280,
          width: size.width * .85,
          decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: size.width * .85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(imagePath,fit: BoxFit.cover,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20,left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Mixed Berry Melody',style: kStyleNormal,),
                    const SizedBox(height: 6,),
                    Text('Berries mixed together to make a tasty dish',style: kStyleSmall,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
