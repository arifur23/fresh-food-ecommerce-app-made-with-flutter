import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/registration_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/login_input_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
                    const SizedBox(height: 115,),
                    const Text('Sign in',style: TextStyle(color: kPrimaryColor,fontSize: 23,fontWeight: FontWeight.bold),),
                    const SizedBox(height: 35,),
                    const LoginInputWidget(Icons.email, 'Email',false),
                    const SizedBox(height: 5,),
                    const LoginInputWidget(Icons.lock, 'Password',true),
                    const SizedBox(height: 20,),
                    Text('Forget password?',style: TextStyle(color: Colors.black.withOpacity(.4)),),
                    const SizedBox(height: 100,),
                    Container(
                      height: 50,
                      width: size.width * 5,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      color: kPrimaryColor
                      ),
                      child: const Center(child: Text('SIGN IN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => const RegistrationScreen()));
            }, 
                child: Text('CREATE ACCOUNT',style: TextStyle(color: Colors.black.withOpacity(.4),fontSize: 15,fontWeight: FontWeight.bold),)),
          ],
        ),
      ),
    );
  }
}
