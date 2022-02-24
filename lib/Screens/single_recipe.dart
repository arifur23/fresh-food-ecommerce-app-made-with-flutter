import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Widgets/single_recipe_ingre_item.dart';

class SingleRecipeScreen extends StatefulWidget {
  const SingleRecipeScreen({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  _SingleRecipeScreenState createState() => _SingleRecipeScreenState();
}

class _SingleRecipeScreenState extends State<SingleRecipeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(top: 10,left: 20),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black.withOpacity(.4),),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Mixed Berry Melody',style: kStyleBig,),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList( delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      width: size.width * .85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                          child: Image.asset(widget.imagePath,fit: BoxFit.cover,)
                      ),
                    ),
                    const SizedBox(height: 30,),
                    Text('Ingredients',style: kStyleHeading,),
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          const SingleRecipeIngreItem(iconData: Icons.format_align_left, title: '4', iconTitle: 'Easy',),
                          const SingleRecipeIngreItem(iconData: Icons.timelapse, title: 'Raspberries', iconTitle: 'Prep 20m',),
                          const SingleRecipeIngreItem(iconData: Icons.fireplace_outlined, title: 'Cock 5m', iconTitle: 'Easy',),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: kSecondaryColor,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              const SizedBox(width: 13,),
                              Text('1/2 Lemon',style: kStyleNormal,),
                            ],
                          ),
                          const SizedBox(height: 13,),
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(50)
                            ),
                          ),

                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Text('Instructions',style: kStyleHeading,),
                    const SizedBox(height: 20,),
                    Text('Start by taking the 4 raspberries, chop them'
                      'into tiny segments and introduce the'
                      'strawberry. Check to make sure that the'
                      'raspberries and the strawberry sit well'
                      'together, before slicing and dicing a lemon'
                      'and adding it to this rather strange'
                      'combination of fruits.',
                    style: TextStyle(
                      color: Colors.black.withOpacity(.4),
                      height: 1.5,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),
                    ),
                    const SizedBox(height: 30,)
                  ],
                ),
              )
            ]
          ),)
        ],
      ),
    );
  }
}
