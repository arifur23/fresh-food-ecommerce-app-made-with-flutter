import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/login_screen.dart';
import 'package:fresh_food_ecommerce/Screens/settings_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/login_input_widget.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const SettingsScreen()));
          },
              icon: Icon(Icons.close,color: Colors.black.withOpacity(.4),))
        ],
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [

            Container(
              height: size.height * .84,
              width: size.width,
              decoration:  BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight:Radius.circular(25))
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40,right: 40,top: 20,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    const SizedBox(height: 110,),
                    const Text('Create Account',style: TextStyle(color: kPrimaryColor,fontSize: 23,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 55,),
                    const LoginInputWidget(Icons.male, 'Full Name',false),
                    const SizedBox(height: 5,),
                    const LoginInputWidget(Icons.email, 'Email',false),
                    const SizedBox(height: 5,),
                    const LoginInputWidget(Icons.lock, 'Password',true),
                    const SizedBox(height: 50,),
                    Container(
                      height: 50,
                      width: size.width * 5,
                      decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kPrimaryColor
                      ),
                      child: const Center(child: Text('CREATE ACCOUNT',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const LoginScreen()));
            },
                child: Text('SIGN IN',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 15,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}
