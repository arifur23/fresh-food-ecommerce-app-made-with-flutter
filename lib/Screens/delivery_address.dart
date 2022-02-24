import 'dart:core';

import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/delivery_option_screen.dart';
import 'package:fresh_food_ecommerce/Screens/order_summary_screen.dart';
import 'package:fresh_food_ecommerce/Screens/payment_method_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/delivery_address_item.dart';

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({Key? key}) : super(key: key);

  @override
  _DeliveryAddressScreenState createState() => _DeliveryAddressScreenState();
}

enum DeliveryScreen{
  deliveryAddress,
  deliveryOption,
  paymentMethod,
  orderSummary
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  String title = 'Delivery Address';
  DeliveryScreen deliveryScreen = DeliveryScreen.deliveryAddress;

  @override
  void initState() {
    setState(() {
      _tabController = TabController(length: 4, vsync: this);
    });
    super.initState();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
          bottom:  TabBar(
            onTap: (int tabNum){
              setState(() {
                if(tabNum == 0){
                  deliveryScreen = DeliveryScreen.deliveryAddress;
                  title = 'Delivery Address';
                }
                if(tabNum == 1){
                  deliveryScreen = DeliveryScreen.deliveryOption;
                  title = 'Delivery Option';
                }
                if(tabNum == 2){
                  deliveryScreen = DeliveryScreen.paymentMethod;
                  title = 'PaymentMethod';
                }
                else if(tabNum == 3){
                  deliveryScreen = DeliveryScreen.orderSummary;
                  title = 'Order Summary';
                }
              });
            },
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: [
              Container(
                height: 50,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: deliveryScreen == DeliveryScreen.deliveryAddress ? kPrimaryColor : Colors.white
                ),
                  child:  Tab(icon: Icon(Icons.my_location_outlined,color: (deliveryScreen == DeliveryScreen.deliveryAddress ? kSecondaryColor : Colors.black.withOpacity(.4)) ,))
              ),
              Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: deliveryScreen == DeliveryScreen.deliveryOption ? kPrimaryColor : Colors.white
                  ),
                  child:  Tab(icon: Icon(Icons.directions_car,color: deliveryScreen == DeliveryScreen.deliveryOption ? kSecondaryColor : Colors.black.withOpacity(.4),))
              ),
              Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: deliveryScreen == DeliveryScreen.paymentMethod ? kPrimaryColor : Colors.white
                  ),
                  child: Tab(icon: Icon(Icons.credit_card,color: deliveryScreen == DeliveryScreen.paymentMethod ? kSecondaryColor : Colors.black.withOpacity(.4),))
              ),
              Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color:deliveryScreen == DeliveryScreen.orderSummary ? kPrimaryColor : Colors.white
                  ),
                  child: Tab(icon: Icon(Icons.list,color: deliveryScreen == DeliveryScreen.orderSummary ? kSecondaryColor : Colors.black.withOpacity(.4),))
              ),
            ],
          ),
        leading: Padding(
          padding: const EdgeInsets.only(top: 30,left: 15),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back,color: Colors.black,),
          ),
        ),
        centerTitle: true,
        title:  Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Text(title,style: kStyleBig,),
        ),
      ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children:  [
            DeliveryAddressTab(callback: (){
              setState(() {
                deliveryScreen = DeliveryScreen.deliveryOption;
                title = 'Delivery Option';
                _tabController!.index++;
              });
            },),
            DeliveryOptions(callback: (){
              setState(() {
                deliveryScreen = DeliveryScreen.paymentMethod;
                title ='Payment Method';
                _tabController!.index++;
              });
            },),
            PaymentMethodScreen(callback: (){
              setState(() {
                deliveryScreen = DeliveryScreen.orderSummary;
                title ='Order Summary';
                _tabController!.index++;
              });
            },),
            const OrderSummaryScreen()
          ],
        )
    );
  }
}

class DeliveryAddressTab extends StatelessWidget {
  const DeliveryAddressTab({Key? key, required this.callback}) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    const SizedBox(height: 30,),
                    Container(
                        height: 55,
                        width: size.width * .85,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF0F4F8),
                            borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Arifur Rhaman',style: kStyleNormal,),
                              Container(
                                height: 23,
                                width: 23,
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: const Icon(Icons.check,size: 15,color: Colors.white,),
                              )
                            ],
                          ),
                        )
                    ),
                    const SizedBox(height: 15,),
                    Container(
                        height: 55,
                        width: size.width * .85,
                        decoration: const BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20,top: 15),
                          child: Text('LDN 4OW',style: kStyleHeadingBlack,),
                        )
                    ),
                    const SizedBox(height: 3,),
                    Container(
                      height: size.height * .3,
                      width: size.width * .85,
                      decoration: const BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                        child: ListView(
                          scrollDirection: Axis.vertical,
                          physics: const BouncingScrollPhysics(),
                          children: [
                            Text('1 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('2 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('3 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('4 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('5 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('6 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('7 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 15,),
                            Text('8 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 10,),
                            Text('9 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 10,),
                            Text('10 Wallable Way, London, United Kings',style: kStyleNormal,),
                            const SizedBox(height: 10,),
                          ],
                        ),
                      ),
                    ),
                    const DeliveryAddressItem(title: 'Street Address',),
                    const DeliveryAddressItem(title: 'Town/City',),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      onTap: (){
                        callback();
                      },
                      child: Container(
                        height: 55,
                        width: size.width * .85,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                            const SizedBox(width: 7,),
                            Text('CONTINUE',style: kStyleNormalWhite,)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                  ],
                )
              ]
          ))
        ],
      ),
    );
  }
}
