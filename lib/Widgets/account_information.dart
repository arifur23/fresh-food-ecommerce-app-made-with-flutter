
import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class AccountInformation extends StatefulWidget {
  final String field;
  final String value;
  final bool isObscure;
  final TextEditingController controller;

  const AccountInformation({Key? key, required this.field, required this.value, required this.isObscure, required this.controller,}) : super(key: key);


  @override
  State<AccountInformation> createState() => _AccountInformationState();
}

class _AccountInformationState extends State<AccountInformation> {

   bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.field,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.4)),),
                  const SizedBox(height: 5,),
                  Text(widget.value,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.black.withOpacity(.3)))
                ],
              ),
              IconButton(
                  onPressed: (){
                    setState(() {
                      isVisible = ! isVisible;
                    });
                  },
                  icon: const Icon(Icons.edit))
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            child: IgnorePointer(
              ignoring: !isVisible,
              child: Opacity(
                opacity: isVisible ? 1 : 0,
                child: Container(
                  height: 55,
                  width: size.width * .85,
                  decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(
                    controller: widget.controller,
                    obscureText: widget.isObscure,
                    decoration: InputDecoration(
                      suffixIconColor: Colors.black,
                      suffixIcon: IconButton(
                        onPressed: (){
                          isVisible = !isVisible;
                        },
                        icon: const Icon(Icons.add_circle,),
                      ),
                      hintText: widget.field,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
