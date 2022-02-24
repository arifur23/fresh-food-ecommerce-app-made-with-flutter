
import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class SingleRecipeIngreItem extends StatelessWidget {
  const SingleRecipeIngreItem({
    Key? key, required this.title, required this.iconTitle, required this.iconData,
  }) : super(key: key);

  final String title;
  final String iconTitle;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.check,color: Colors.white,size: 14,),
              ),
              const SizedBox(width: 13,),
              Text(title,style: kStyleNormal,)
            ],
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(iconData,color: Colors.black.withOpacity(.4),size: 20,),
              const SizedBox(width: 10,),
              Text(iconTitle,style: kStyleNormal,)
            ],
          )
        ],
      ),
    );
  }
}
