import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/categoryv1.dart';
import 'package:ecommerceapp/views/singleprdt.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
      List<Map> products=[
    {"name":"E1 Headphone","price":2000,"isfavorite":false},
    {"name":"E2 Headphone","price":5890,"isfavorite":false},
    {"name":"E3 Headphone","price":7890,"isfavorite":false},


  ];
   List<Map> favoriteProducts=[];
  List<Map> cartProducts=[];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
      Padding(
              padding: const EdgeInsets.only(left: 37,top: 71),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => SinglePrdt(addto: favoriteProducts))));
                },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(Imagespath.icon1,width: 20,)),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Center(child: const Text("Browse by Categories",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 14),)),
          ),
          ListView.builder(
             shrinkWrap: true,
             physics: NeverScrollableScrollPhysics(),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Stack(
              children: [Padding(
                padding:  EdgeInsets.only(left: 35,top: 64),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(Imagespath.back)),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 35,top: 10),
                child: Image.asset(Imagespath.speaker,height: 160,),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: 80,top: 170),
                        child:Text(products[index]["name"],style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),),
                      ),
                        GestureDetector(
                          onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Category(fav: favoriteProducts)));
                             if (products[index]["isfavorite"]==false) {
                favoriteProducts.add(products[index]);
                setState(() {
                  products[index]["isfavorite"]=true;
              });
              }else{
                setState(() {
                favoriteProducts.remove(products[index]);
                  products[index]["isfavorite"]=false;
                });
              } 
                   },
              child: Icon(Icons.photo_size_select_large_outlined)),     
                    ],
                  ),         
                   Padding(          
                    padding: const EdgeInsets.only(top: 4,right: 70),          
                    child:Text(products[index]["price"].toString()),       
                  ),
                    ],
              ),
              ]),
            );
          },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Image.asset(Imagespath.line,width: 400,color: Color(0xffF3F6F8),),
          ),
           const Padding(
            padding:  EdgeInsets.only(top: 32),
            child: Center(child:  Text("Recommended for You",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 14),)),
          ),
        Row(
          children: [
            Stack(
              children: [
                Padding(
                padding: const EdgeInsets.only(left: 35,top: 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(Imagespath.back1)),
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 50,top: 30),
                child: Image.asset(Imagespath.beo1,height: 113,width: 113,),
              ),
                Column(
                        children: const [
                          Padding(
                            padding:  EdgeInsets.only(left: 60,top: 170),
                            child: Text("Beosound 1",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),),
                          ),
                            Padding(
                            padding: EdgeInsets.only(left: 60,top: 4),
                            child: Text("\$1,600",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w200,fontSize: 12,color: Color(0xff171717)),),
                          ),
                        ],
                      ),
            ]),
             Stack(
              children: [
                Padding(
                padding: const EdgeInsets.only(left: 10,top: 24),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(Imagespath.back1)),
                    ),
              Padding(
                padding: const EdgeInsets.only(left: 30,top: 30),
                child: Image.asset(Imagespath.pr1,width: 113,),
              ),
                Column(
                        children: const [
                          Padding(
                            padding:  EdgeInsets.only(left: 40,top: 170),
                            child: Text("Beolit 17",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),),
                          ),
                            Padding(
                            padding: EdgeInsets.only(left: 40,top: 4),
                            child: Text("\$550",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w200,fontSize: 12,color: Color(0xff171717)),),
                          ),
                        ],
                      ),
            ]),
          ],
        ),
        ],
      ),
     bottomNavigationBar: const Padding(
       padding:  EdgeInsets.symmetric(horizontal: 23,vertical: 26),
       child: GNav(
        activeColor: Colors.black,
        gap: 5,
        tabBackgroundColor: Color(0xffC6AB59),
        padding: EdgeInsets.all(15),
        tabs: [
          GButton(
            icon: Icons.home,
          text: "Home",
          ),
          GButton(
            icon: Icons.search,
          text: "Search",),
          GButton(
            icon: Icons.shopping_bag_outlined,
          text: "Order",
          ),
          GButton(
            icon: Icons.person_outlined,
          text: "Account",
          ),
        ],
       ),
     ),
    );
  }
}