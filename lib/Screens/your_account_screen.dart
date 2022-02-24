import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Widgets/account_information.dart';

class YourAccount extends StatefulWidget {
   const YourAccount({Key? key}) : super(key: key);

  @override
  State<YourAccount> createState() => _YourAccountState();
}

class _YourAccountState extends State<YourAccount> {
  final bool value = true;

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late String name;
  late String email;
  late String address;
  late String password;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 25),
            child: IconButton(
              onPressed: (){
                name = nameController.text;
                email = emailController.text;
                address = addressController.text;
                password = passwordController.text;
                print(name);
              },
              icon: Icon(Icons.check,size: 20,color: Colors.black.withOpacity(.4),),
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(top: 10,left: 25),
          child:  IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.black.withOpacity(.6),),
          ),
        ),
        elevation: 2,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Your Account',style: kStyleBig,),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.only(left: 40,top: 25,bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Text('Your Information',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.4))),
                    const SizedBox(height: 20,),
                    Container(
                      width: size.width * .8,
                      decoration: BoxDecoration(
                        color:const Color(0xFFF0F4F8),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:25,vertical: 17),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AccountInformation(field: 'Full Name', value: 'Arifur Rhaman', isObscure: false, controller: nameController,),
                            AccountInformation(field: 'Address', value: 'Hemayetpur, Savar, Dhaka', isObscure: false, controller: addressController,),
                            AccountInformation(field: 'Email', value: 'arifurrhaman9@gmail.com', isObscure: false, controller: emailController,),
                            AccountInformation(field: 'Password', value: '*********', isObscure: true, controller:  passwordController,),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Text('Your Preferences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.4))),
                    const SizedBox(height: 25,),
                    Container(
                        width: size.width * .8,
                        decoration: BoxDecoration(
                            color:const Color(0xFFF0F4F8),
                            borderRadius: BorderRadius.circular(10)
                        ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                        child: Column(
                          children: const [
                            YourAccountPreference(field: 'Notifications',value: true),
                            YourAccountPreference(field: 'Newsletter',value: false)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 25,),
                    Text('Payment Methods',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.4))),
                    const SizedBox(height: 25,),
                    Container(
                      height: size.height * .3,
                      width: size.width,
                      color: Colors.white,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: const [
                          PaymentCard(),
                          PaymentCard(),
                          PaymentCard(),
                          PaymentCard(),

                        ],
                      )
                    )
                  ],
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key? key,
  }) : super(key: key);

  final String card = 'Card';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(15),
      height: size.height * .2,
      width: size.width * .67,
      decoration: BoxDecoration(
        color: const Color(0xFFF0F4F8),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(child: Text(card,style: const TextStyle(fontSize: 25),)),
    );
  }
}

class YourAccountPreference extends StatelessWidget {
  const YourAccountPreference({
    Key? key,
    required this.value, required this.field,
  }) : super(key: key);

  final bool value;
  final String field;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(field,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(.4))),
        Switch(
          value: value,
          onChanged:null,
          activeColor: const Color(0xFF748A9D),
        )
      ],
    );
  }
}
