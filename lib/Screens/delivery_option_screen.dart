import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Widgets/select_date_widget.dart';
import 'package:fresh_food_ecommerce/Widgets/select_speed_widget.dart';
import 'package:fresh_food_ecommerce/Widgets/select_time_widget.dart';

class DeliveryOptions extends StatelessWidget {
  const  DeliveryOptions({Key? key, required this.callback}) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Select Speed',style: kStyleHeadingBlack,),
                      const SizedBox(height: 20,),
                      Row(
                        children:  [
                          SelectSpeedWidget(iconData: Icons.drive_eta,transportType: "Standard",delay: '2-3 days(free)', opacity: false, callback: () {  },),
                          const SizedBox(width: 15,),
                          SelectSpeedWidget(iconData: Icons.drive_eta,transportType: "Supersonic",delay: 'Next day (\$4.99)', opacity: true, callback: () {  },),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text('Select Date',style: kStyleHeadingBlack,),
                      const SizedBox(height: 20,),
                      Container(
                        height: 60,
                        width: size.width * .9,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: const [
                            SelectDate(),
                            SelectDate()
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text('Select Time',style: kStyleHeadingBlack,),
                      const SizedBox(height: 20,),
                      Container(
                        height: 60,
                        width: size.width * .9,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          children: const [
                            SelectTime(),
                            SelectTime()
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      GestureDetector(
                        onTap: (){
                          callback();
                          // Navigator.push(context, MaterialPageRoute(builder: (_) => const PaymentMethodScreen()));
                        },
                        child: Container(
                          height: 55,
                          width: size.width * .8,
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 120),
                            child: Row(
                              children: [
                                const Icon(Icons.arrow_forward ,color: Colors.white,size: 15,),
                                const SizedBox(width: 5,),
                                Text('CONTINUE',style: kStyleNormalWhite,)
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
      ),
    );
  }
}



