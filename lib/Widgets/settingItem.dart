import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  SettingItem({Key? key, required this.iconData, required this.itemText, required this.onTap}) : super(key: key);
  final IconData iconData;
  final String itemText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 5),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          height: 65,
          width: size.width * 50,
          decoration: const BoxDecoration(
            color: Color(0xFFF0F4F8),
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children:  [
                    Icon(iconData,color:const Color(0xFF9CEFAA)),
                    const SizedBox(width: 10,),
                    Text(itemText, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black.withOpacity(.3)),)
                  ],
                ),
                const Icon(Icons.keyboard_arrow_right_sharp,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
