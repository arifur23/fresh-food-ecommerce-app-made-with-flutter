import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/cart_screen.dart';
import 'package:fresh_food_ecommerce/Screens/home_screen.dart';
import 'package:fresh_food_ecommerce/Screens/recipes_screen.dart';
import 'package:fresh_food_ecommerce/Screens/settings_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/show_search.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({Key? key}) : super(key: key);

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

enum BottomBarIcon{
  home,
  setting,
  account,
  cart
}

class _NavigationWidgetState extends State<NavigationWidget> {
  BottomBarIcon bottomBarIcon = BottomBarIcon.home;
  List<Widget> displayItems = const [
    HomeScreen(),
    RecipesScreen(),
    CartScreen(),
    SettingsScreen()
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: displayItems[selectedIndex],
        bottomNavigationBar: Container(
          height: 80,
          decoration: const BoxDecoration(
            color:  kSecondaryColor,
            borderRadius:  BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            // boxShadow: <BoxShadow>
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.home;
                        selectedIndex = 0;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.home,color: bottomBarIcon == BottomBarIcon.home ? kPrimaryColor : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Home',style: TextStyle(color: bottomBarIcon == BottomBarIcon.home ? const Color(0xff73C3D9) : const Color(0xff4B4F7F))
                            )],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.setting;
                        selectedIndex = 1;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                        // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.menu_book_outlined,color: bottomBarIcon == BottomBarIcon.setting ? kPrimaryColor : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Recipe',style: TextStyle(color: bottomBarIcon == BottomBarIcon.setting ? const Color(0xff73C3D9) : const Color(0xff4B4F7F)))
                          ],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.account;
                        selectedIndex = 2;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                        // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.add_shopping_cart,color: bottomBarIcon == BottomBarIcon.account ? kPrimaryColor : const Color(0xff4B4F7F)),
                            const SizedBox(height: 7,),
                            Text('Cart',style: TextStyle(color: bottomBarIcon == BottomBarIcon.account ? const Color(0xff73C3D9) : const Color(0xff4B4F7F))
                            )],
                        ),
                      ),
                    )
                ),
                GestureDetector(
                    onTap: (){
                      print('Tapped');
                      setState(() {
                        bottomBarIcon = BottomBarIcon.cart;
                        selectedIndex = 3;
                      });
                    },
                    child:Container(
                      decoration: BoxDecoration(
                        // color: Colors.indigoAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Icon(Icons.settings,color: bottomBarIcon == BottomBarIcon.cart ? kPrimaryColor : const Color(0xff4B4F7F),),
                            const SizedBox(height: 7,),
                            Text('Settings',style: TextStyle(color: bottomBarIcon == BottomBarIcon.cart ? const Color(0xff73C3D9) : const Color(0xff4B4F7F)),)
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}
