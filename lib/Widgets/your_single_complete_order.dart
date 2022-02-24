import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Widgets/your_order_tile.dart';
import 'package:fresh_food_ecommerce/Widgets/your_order_total.dart';

class YourSingleCompleteOrder extends StatelessWidget {
  const YourSingleCompleteOrder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFFF0F4F8),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children:  [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: ExpansionTile(
                title: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text('Order #2134',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black.withOpacity(.4)),),
                ),
                children:  <Widget> [
                  const YourOrderTile(),
                  const YourOrderTile(),
                  const YourOrderTile(),
                  const YourOrderTile(),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        const Text('Broccoli',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFFF0F4F8)),),
                        Row(
                          children: [
                            Text('Delivery fee',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4))),
                            const SizedBox(
                              width: 30,
                            ),
                            Text('\$.80',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4)))
                          ],
                        )
                      ],
                    ),
                  ),
                  const YourOrderTotal()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
