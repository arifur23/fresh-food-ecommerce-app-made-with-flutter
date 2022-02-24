
import 'package:flutter/material.dart';

class SinglePreference extends StatelessWidget {
  const SinglePreference({
    Key? key,
    required this.value, required this.item,
  }) : super(key: key);

  final bool value;
  final String item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children:  [
            const SizedBox(width: 10,),
            Text(item, style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: Colors.black.withOpacity(.4)),)
          ],
        ),
        Switch(
          value: value,
          onChanged:null,
          activeColor: const Color(0xFF748A9D),
          inactiveTrackColor: Colors.blueAccent,
        )
      ],
    );
  }
}
