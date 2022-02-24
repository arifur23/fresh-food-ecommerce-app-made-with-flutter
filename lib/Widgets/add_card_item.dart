
import 'package:flutter/material.dart';

class AddCardItem extends StatelessWidget {
  final IconData icon;
  final String title;

  const AddCardItem({Key? key, required this.icon, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 60,
        width: size.width * .84,
        decoration: BoxDecoration(
            color: const Color(0xFFF0F4F8),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Row(
            children: [
              Icon(icon,color: Colors.black.withOpacity(.4),),
              const SizedBox(width: 20,),
              Text(title,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17,color: Colors.black.withOpacity(.4)),)
            ],
          ),
        ),
      ),
    );
  }
}
