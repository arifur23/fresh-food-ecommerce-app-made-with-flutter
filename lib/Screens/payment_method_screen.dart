import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/add_card_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/payment_method_item.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({Key? key, required this.callback}) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30,top: 40,bottom: 20),
          child: Column(
            children: [
              const SizedBox(height: 30,),
              Container(
                height: 200,
                width: size.width * .95,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const AddCard()));
                        },
                        child: Container(
                          height: 200,
                          width: size.width * .75,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kSecondaryColor
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle_outline,color: Colors.black.withOpacity(.4),size: 35,),
                                const SizedBox(height: 10,),
                                Text('ADD CARD',style: kStyleBig,)
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    const PaymentMethodItem(),
                    const PaymentMethodItem(),
                  ],
                ),
              ),
              const SizedBox(height: 130,),
              GestureDetector(
                onTap: (){
                  callback();
                },
                child: Container(
                  height: 55,
                  width: size.width * .84,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 112),
                    child: Row(
                      children: const [
                        Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                        SizedBox(width: 5,),
                        Text('PLACE ORDER',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
