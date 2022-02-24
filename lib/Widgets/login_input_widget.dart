

import 'package:flutter/material.dart';

class LoginInputWidget extends StatelessWidget {
  const LoginInputWidget(this.preIcon, this.title, this.obscure);

   final IconData preIcon;
   final String title;
   final bool obscure;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.82,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4F8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        obscureText: obscure,
        onChanged: null,
        keyboardType: obscure ? TextInputType.text :TextInputType.emailAddress,
        cursorColor: const Color(0xFFF0F4F8),
        decoration: InputDecoration(
          hintText: title,
          icon: Icon(
            preIcon,
            color: Colors.black.withOpacity(.4),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

