import 'package:flutter/material.dart';
import 'package:fresh_food_ecommerce/Constants/constants.dart';
import 'package:fresh_food_ecommerce/Screens/product_screen.dart';
import 'package:fresh_food_ecommerce/Widgets/home_list_item.dart';
import 'package:fresh_food_ecommerce/Widgets/show_search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text('Store',style: kStyleBig,),
        ),
        centerTitle: true,
        actions: [
          Padding(
              padding: const EdgeInsets.only(top: 15,right: 20),
              child: IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: NameSearch(names));
                },
                icon: const Icon(Icons.search,color: Colors.black,),

              )
          )],
        elevation: 0,
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate(
                [
                  Column(
                    children: [
                      Container(
                        height: size.height * .5,
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
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 40,top: 20,bottom: 20),
                              child: GestureDetector(
                                onTap: ()
                                {
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProductScreen()));
                                },
                                child: Container(
                                  height: size.height * .32,
                                  width: size.width * .90,
                                  child: Center(child: Image.asset('assets/broccoli-.jpg',fit: BoxFit.cover,)),
                                ),
                              ),
                            ),
                            Text('Vegetables',style: kStyleExtraBig,),
                            const SizedBox(height: 10,),
                            Text('Browse',style: kStyleNormal,)
                          ],
                        ),
                      ),
                      const SizedBox(height: 12,),
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Container(
                          height: size.height * .23,
                          width: size.width * .94,
                          decoration: const BoxDecoration(
                          ),
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              children: const [
                                HomeListItem(boxColor: Colors.red, imagePath: 'assets/berry.png', name: 'Berries',),
                                HomeListItem(boxColor: Colors.yellow, imagePath: 'assets/citrus.png', name: 'Citrus',),
                                HomeListItem(boxColor: Colors.deepPurpleAccent, imagePath: 'assets/berry.png', name: 'Berries',),
                              ]
                          ),
                        ),
                      )
                    ],
                  )
                ]
            ))
          ],
        ),
      ),
    );
  }
}


const names = [
  "Camila	Chapman",
  "Belinda	Cameron",
  "Amelia	Harris",
  "Aldus	Howard",
  "Mike	Ryan",
  "Adelaide	Perry",
  "Derek	Hall",
  "Cherry	Ryan",
  "Derek	Owens",
  "John	Walker",
  "Belinda	Ferguson",
  "Vanessa	Barrett",
  "Julian	Foster",
  "Jasmine	Evans",
  "Sabrina	Hunt",
  "Deanna	Carroll",
  "Hailey	Murray",
  "Maximilian	Crawford",
  "Grace	Wright",
  "Garry	Murphy",
  "Catherine	Ferguson",
  "Amelia	Watson",
  "Alisa	Baker",
  "Maria	Miller",
  "Daisy	Harper",
  "Michelle	West",
  "Caroline	Taylor",
  "Heather	West",
  "Justin	Lloyd",
  "Lydia	Cameron",
  "Daryl	Harris",
  "Tara	Robinson",
  "Haris	Wells",
  "Emily	Scott",
  "Catherine	Wells",
  "Ned	Murphy",
  "Blake	Casey",
  "Chelsea	Mitchell",
  "Stuart	Reed",
  "Ellia	Jones",
  "Florrie	Lloyd",
  "Blake	Barnes",
  "Jack	Cole",
  "Adele	Henderson",
  "Jessica	Rogers",
  "Florrie	Barrett",
  "Ryan	Owens",
  "Briony	Dixon",
  "Alexander	Cole",
  "Jessica	Casey",
  "Ryan	Grant",
  "Emily	Fowler",
  "Edith	Turner",
  "Max	Payne",
  "Melanie	Davis",
  "Lucas	Mitchell",
  "Aldus	Warren",
  "Ashton	Kelley",
  "Frederick	Armstrong",
  "Chester	Smith",
  "Alissa	Riley",
  "Bruce	Rogers",
  "Edgar	Armstrong",
  "Cadie	Cooper",
  "Ryan	Scott",
  "Rebecca	Campbell",
  "Rebecca	Parker",
  "Grace	Bennett",
  "Alen	Cunningham",
  "Lucia	Douglas",
  "Sydney	Allen",
  "Roland	Cole",
  "Eddy	Lloyd",
  "Haris	Murphy",
  "Fiona	Farrell",
  "Honey	Jones",
  "Edward	Watson",
  "Ada	Harris",
  "Jordan	Owens",
  "Carlos	Stevens",
  "Alissa	Howard",
  "Madaline	Smith",
  "Luke	Carroll",
  "Paul	Campbell",
  "Adrian	Murray",
  "Ashton	Brown",
  "Ned	Harris",
  "Michelle	Thomas",
  "Ted	Evans",
  "Adelaide	Hawkins",
  "Sydney	Hall",
  "Arnold	Ross",
  "Clark	Stewart",
  "Carl	Smith",
  "Vivian	Watson",
  "Sam	Wells",
  "Arnold	Stevens",
  "Vivian	Miller",
  "John	Hawkins",
  "Edgar	Payne",
];