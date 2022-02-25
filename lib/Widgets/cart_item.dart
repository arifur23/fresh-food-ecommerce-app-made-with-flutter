import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  const CartItem({
    Key? key, required this.imagePath, required this.itemName, required this.amount, required this.price, required this.editItem, required this.deleteItem,
  }) : super(key: key);

  final String imagePath;
  final String itemName;
  final String amount;
  final String price;
  final VoidCallback editItem;
  final VoidCallback deleteItem;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool isVisible = true;

  void toggleVisible(){
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Container(
        height: 80,
        width: size.width * .86,
        decoration: BoxDecoration(
            color: const Color(0xFFF0F4F8),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Stack(
          children: [
            GestureDetector(
              onTap: toggleVisible,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                              child: Image.asset(widget.imagePath,
                                fit: BoxFit.cover,
                              )
                          ),
                        ),
                        const SizedBox(width: 30,),
                        Text(widget.itemName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)),),
                      ],
                    ),
                    Row(
                      children:  [
                        Text(widget.amount,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.2))),
                        const SizedBox(width: 20,),
                        Text(widget.price,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black.withOpacity(.3)))
                      ],
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IgnorePointer(
                ignoring: isVisible,
                child: Opacity(
                  opacity: isVisible ? 0 : 1,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const  BoxDecoration(
                        color: Color(0xFFC3D3E0),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10))
                    ),
                    child: IconButton(
                        onPressed: widget.deleteItem,
                        icon: const Icon(Icons.delete,color: Colors.white,)),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 60,
              top: 0,
              child: IgnorePointer(
                ignoring: isVisible,
                child: Opacity(
                  opacity: isVisible ? 0 : 1,
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                      color: Color(0xFFDBE2ED),
                    ),
                    child: IconButton(
                        onPressed: widget.editItem,
                        icon: const Icon(Icons.edit,color: Colors.white,)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
