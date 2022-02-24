import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Widgets/your_single_complete_order.dart';

class YourOrders extends StatelessWidget {
  const YourOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black.withOpacity(.4),size: 20,),
          ),
        ),
        elevation: 2,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Your Orders',style: kStyleBig),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
              [
                const YourSingleCompleteOrder(),
                const YourSingleCompleteOrder(),
                const YourSingleCompleteOrder(),
                const YourSingleCompleteOrder(),
              ]
            )
          )
        ],
      )
    );
  }
}


