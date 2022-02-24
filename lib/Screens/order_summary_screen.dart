import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Widgets/order_summary_cupon.dart';
import 'package:fresh_food_ecommerce/Widgets/order_summary_item.dart';

import '../Constants/constants.dart';

class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 60,),
                Column(
                  children:  [
                    const OrderSummaryItem(imagePath: "imagePath", itemName: "Broccoli", amount: "2 heads", price: "\$0.80"),
                    const OrderSummaryItem(imagePath: "imagePath", itemName: "Broccoli", amount: "2 heads", price: "\$0.80"),
                    const OrderSummaryItem(imagePath: "imagePath", itemName: "Broccoli", amount: "2 heads", price: "\$0.80"),
                    const OrderSummaryItem(imagePath: "imagePath", itemName: "Broccoli", amount: "2 heads", price: "\$0.80"),
                    const SizedBox(height: 25,),
                    OrderSummaryCoupon(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Sub-total',style: kStyleNormal),
                              Text('\$9.30',style: kStyleNormal,)
                            ],
                          ),
                          const SizedBox(height: 7,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text('Delivery',style: kStyleNormal,),
                              Text('\$9.30',style: kStyleNormal,)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text('Total',style: kStyleBig,),
                              Text('\$9.30',style: kStyleBig,)
                            ],
                          ),
                          const SizedBox(height: 30,),
                          GestureDetector(
                            onTap: (){
                              Navigator.pop(context);
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
                          )
                        ],
                      ),
                    )
                  ]
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}
