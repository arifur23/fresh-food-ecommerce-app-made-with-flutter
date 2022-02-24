import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';

class SelectSpeedWidget extends StatelessWidget {
  const SelectSpeedWidget({
    Key? key, required this.iconData, required this.transportType, required this.delay, required this.opacity, required this.callback,
  }) : super(key: key);

  final IconData iconData;
  final String transportType;
  final String delay;
  final bool opacity;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: callback,
      child: Container(
        width: size.width * .42,
        height: size.width * .42,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData,color: Colors.black.withOpacity(.5),),
            const SizedBox(height: 15,),
            Text(transportType,style: kStyleHeadingBlack,),
            const SizedBox(height: 5,),
            Text(delay,style: kStyleNormal,),
            const SizedBox(height: 8,),
            Stack(
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black.withOpacity(.6)
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: IgnorePointer(
                    ignoring: !opacity,
                    child: Opacity(
                      opacity: opacity ? 1 : 0,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: kPrimaryColor
                        ),
                        child: const Icon(Icons.check,color: Colors.white,size: 15,),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}