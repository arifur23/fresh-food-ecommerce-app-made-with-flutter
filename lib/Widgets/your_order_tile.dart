import 'package:flutter/material.dart';

class YourOrderTile extends StatelessWidget {
  const YourOrderTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text('Broccoli',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4)),),
          Row(
            children: [
              Text('2 Heads',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4))),
              const SizedBox(
                width: 30,
              ),
              Text('\$.80',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.black.withOpacity(.4)))
            ],
          )
        ],
      ),
    );
  }
}
