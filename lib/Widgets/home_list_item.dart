import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class HomeListItem extends StatelessWidget {
  const HomeListItem({
    Key? key, required this.boxColor, required this.imagePath, required this.name,
  }) : super(key: key);

  final Color boxColor;
  final String imagePath;
  final String name;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: size.height * .23,
        width: 135,
        decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imagePath,fit: BoxFit.cover,)
              )
        ),
            const SizedBox(height: 20,),
          Text(name,style: kStyleHeadingBlack,)
          ],
        ),
      ),
    );
  }
}

// Stack(
// children: [
// Positioned(
// top: 10,
// // left: 30,
// child: Image.asset(imagePath)),
// Positioned(
// bottom: 20,
// left: 50,
// child: Text(name,style: kStyleNormal,))
// ],
// )