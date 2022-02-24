import 'package:flutter/material.dart';

class OrderSummaryItem extends StatelessWidget {
  const OrderSummaryItem({Key? key, required this.imagePath, required this.itemName, required this.amount, required this.price}) : super(key: key);
  final String imagePath;
  final String itemName;
  final String amount;
  final String price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Container(
        height: 60,
        width: size.width * .86,
        decoration: BoxDecoration(
            color: const Color(0xFFF0F4F8),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(imagePath),
                      const SizedBox(width: 30,),
                      Text(itemName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)),),
                    ],
                  ),
                  Row(
                    children:  [
                      Text(amount,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.2))),
                      const SizedBox(width: 20,),
                      Text(price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
