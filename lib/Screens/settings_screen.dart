import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Screens/your_account_screen.dart';
import 'package:fresh_food_ecommerce/Screens/your_orders_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/settingItem.dart';
import 'package:fresh_food_ecommerce/Widgets/settings_mode_item.dart';
import '../Widgets/settings_signout_item.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

// [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// turn can be placed in a [Scaffold.body].
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shape: const ContinuousRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
        title: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: Text('Settings',style: TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20),),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Column(
                      children:  [
                        SettingItem(iconData: Icons.settings, itemText: 'Your Account',onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => YourAccount()));
                        },),
                        SettingItem(iconData: Icons.playlist_add_check_rounded, itemText: 'Your Orders',
                          onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (_) => const YourOrders()));
                          } ,),
                        SettingItem(iconData: Icons.chat_outlined, itemText: 'Live Chat',onTap: (){},),
                        SettingsModeItem(iconData: Icons.lightbulb,itemText: 'Dark Mode',),
                        const SizedBox(height: 100,),
                        const SettingSignoutItem(iconData: Icons.close,itemText: 'Sign Out',)
                      ],
                    )
                  ),
                ]
              )
          ),
        ],
      ),
    );
  }
}
