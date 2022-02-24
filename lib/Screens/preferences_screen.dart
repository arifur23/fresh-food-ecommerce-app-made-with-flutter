import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Screens/your_account_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/single_preference.dart';

class Preferences extends StatelessWidget {
  const Preferences({Key? key}) : super(key: key);
   final bool value = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * .70,
              width: size.width,
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight:Radius.circular(25))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
                    Text('Recipe Preferences',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 20,fontWeight: FontWeight.w500),),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Column(
                        children: [
                          SinglePreference(item: 'All',value: value),
                          SinglePreference(item: 'Vegan',value: value),
                          SinglePreference(item: 'Vegetarian',value: value),
                          SinglePreference(item: 'Paleo',value: value),
                          SinglePreference(item: 'Keto',value: value),
                          SinglePreference(item: 'Low Card',value: value),
                          const SizedBox(height: 30,),
                          Text('Tailor your Recipes feed exactly how you like it',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 17,fontWeight: FontWeight.w500),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35,),
            GestureDetector(
              onTap: (){
                // Navigator.push(context, MaterialPageRoute(builder: (_) => const YourAccount()));
              },
              child: Container(
                height: 56,
                width: size.width * .82,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF7BED8D)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 98),
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_forward,color: Colors.white,size: 20,),
                      SizedBox(width: 7,),
                      Text('GET STARTED',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
