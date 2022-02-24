import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/delivery_address.dart';
import 'package:fresh_food_ecommerce/Widgets/cart_item.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:  Text('Cart',style: TextStyle(fontSize:20, color: Colors.black.withOpacity(.4)),),
        centerTitle: true,
        elevation: 3,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))
        ),
      ),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Column(
                  children: [
                    CartItem(itemName: 'Broccoli', imagePath: 'Image', amount: '300g', editItem: () {  }, deleteItem: () {  }, price: '\$.200'),
                    CartItem(itemName: 'Kale', imagePath: 'Image', amount: '3kg', editItem: () {  }, deleteItem: () {  }, price: '\$20'),
                    CartItem( itemName: 'Tomato', imagePath: 'Image', amount: '20kg', editItem: () {  }, deleteItem: () {  }, price: '\$5.50'),
                  ],
                ),
              ),
              const SizedBox(height: 60,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (_) => const DeliveryAddressScreen()));
                      },
                      child: Container(
                        height: 60,
                        width: size.width * .84,
                        decoration: BoxDecoration(
                          color: const Color(0xFF7BED8D),
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 120),
                          child: Row(
                            children: const [
                              Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                              SizedBox(width: 5,),
                              Text('CHECKOUT',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}

