import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/delivery_address.dart';
import 'package:fresh_food_ecommerce/Widgets/your_order_tile.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
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
          child: Text('Broccoli',style: kStyleBig,),
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    const SizedBox(height: 30,),
                  Padding(
                  padding: const EdgeInsets.only(left: 40,top: 20,bottom: 20),
                  child: Container(
                    height: size.height * .32,
                    width: size.width * .90,
                    child: Center(child: Image.asset('assets/broccoli-.jpg',fit: BoxFit.cover,)),
                  ),
                ),
                  const SizedBox(height: 30,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kSecondaryColor
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: ExpansionTile(
                              title: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Broccoli',style: kStyleNormal,),
                                    Text('2 heads',style: kStyleSmall,),
                                    Text('\$0.80',style: kStyleNormal,)
                                  ],
                                ),
                              ),
                              children: const [
                                 YourOrderTile(),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: GestureDetector(
                            onTap: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (_)=> const DeliveryAddressScreen()));
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: kPrimaryColor,
                                  content: const Text('Your item added to Cart'),
                                  action: SnackBarAction(
                                    label: '',
                                    onPressed: () {
                                      // Code to execute.
                                    },
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              height: 55,
                              width: size.width * .8,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 100),
                                child: Row(
                                  children: const [
                                    Icon(Icons.add_shopping_cart,color: Colors.white,size: 20,),
                                    SizedBox(width: 10,),
                                    Text("ADD TO CART",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white,),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                         Text('Description',style: kStyleHeading),
                        const SizedBox(height: 30,),
                        Text('Broccoli is a lovely green cruciferous vegetable. It is healthy, delicious.',style: TextStyle(fontWeight:FontWeight.w500,color: Colors.black.withOpacity(.5),letterSpacing: 1,),),
                        const SizedBox(height: 30,),
                        Text('Storage',style: kStyleHeading,),
                        const SizedBox(height: 30,),

                      ],
                    ),
                  )
            ],
                )
              ]
            ))
          ],
        ),
      ),
    );
  }
}
