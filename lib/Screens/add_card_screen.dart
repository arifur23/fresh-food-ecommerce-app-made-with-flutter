import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Widgets/add_card_item.dart';

class AddCard extends StatelessWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title:  Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Text('Add Card',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.4)),),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 14,right: 20),
            child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.close,color: Colors.black.withOpacity(.4),)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 20),
        child: Column(
          children:  [
            const SizedBox(height: 20,),
            const AddCardItem(title: 'Cardholder Name',icon: Icons.assignment_ind_sharp,),
            const AddCardItem(title: 'Card Number',icon: Icons.credit_card,),
            const AddCardItem(title: 'Expiry Date',icon: Icons.calendar_today,),
            const AddCardItem(title: 'Security Code',icon: Icons.shield,),
            const SizedBox(height: 170,),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                height: 55,
                width: size.width * .83,
                decoration: BoxDecoration(
                  color: const Color(0xFF7BED8D),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.arrow_forward,color: Colors.white,size: 15,),
                     SizedBox(width: 3,),
                    Text('CONTINUE',style: TextStyle(fontWeight:FontWeight.bold,color: Colors.white),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
