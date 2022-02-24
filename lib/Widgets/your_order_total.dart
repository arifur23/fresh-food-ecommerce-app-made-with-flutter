import 'package:flutter/material.dart';

class YourOrderTotal extends StatelessWidget {
  const YourOrderTotal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13,horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    color: const Color(0xFF7BED8D),
                    borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.check,color: Colors.white,size: 15,),
              ),
              const SizedBox(width: 15,),
              Text('Shipped',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: const Color(0xFF7BED8D).withOpacity(.4)),),
            ],
          ),
          Row(
            children: [
              Text('Total',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4))),
              const SizedBox(
                width: 30,
              ),
              Text('\$21.80',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4)))
            ],
          )
        ],
      ),
    );
  }
}