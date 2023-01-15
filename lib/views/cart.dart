import 'dart:js_util';

import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/shipping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class MyCart extends StatelessWidget {
  List<Map> addcart=[];
   MyCart({super.key,required this.addcart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left:36,top: 40,right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Image.asset(Imagespath.arr1)),
              const Text("MY CART",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35,right: 35,top:44,),
          child: Container(
            width: MediaQuery.of(context).size.width*3.5,
            height: MediaQuery.of(context).size.height*0.17,
            decoration: BoxDecoration(

            color: Color(0xffF3F6F8),
            borderRadius: BorderRadius.circular(24),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: addcart.length,
              itemBuilder: (context, index) {
                return Row(
                children: [
                  Image.asset(Imagespath.beo1),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(addcart[index]["name"],style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 16,),),
                      ),
                      Row(
                        children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4,left: 13),
                              child: Text("Color",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w500,fontSize: 10,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6,top: 4),
                              child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                               color: Color(0xff171717),
                              ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4,right: 10,left: 10),
                              child: Text("Size",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w500,fontSize: 10,),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 2),
                              child: Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFFFFFF),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Center(child: Text("S",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w500,fontSize: 10,),)),
                                ),
                              ),
                            ),
                        ],
                      ),
                             Padding(
                                  padding: const EdgeInsets.only(top: 4,right: 20),
                                  child: Center(child: Text(addcart[index]["price"].toString(),style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w400,fontSize: 12,),)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    color: Colors.white,
                                    height: 30,
                                    child: Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xfff7f8fA),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Icon(CupertinoIcons.minus,size: 18,color: Color(0xff171717),),
                                        ),
                                    SizedBox(width: 10,),
                                    Text("01",style: TextStyle(fontFamily: 'DMSans-Bold',fontSize: 14,color: Colors.black),),
                                    SizedBox(width: 10,),
                                     Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xfff7f8fA),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(CupertinoIcons.plus,size: 18,color: Color(0xff171717),),
                                    ),
                                      ],
                                    ),
                                  ),
                                ),
                    ],
                  ),
                ],
              );
              },
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35,right: 35,top: 24),
          child: Container(
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*0.14,
            decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            border: Border.all(
              color: Color(0xffF3F6F8),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 28),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(Icons.shopping_cart_outlined,size: 30,)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24,top: 14),
                          child: Text("Shipping",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w700,fontSize: 16,),),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(left: 10,top: 10),
                          child: Text("2-3 days",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w400,fontSize: 12,),),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 110),
                      child: Icon(Icons.arrow_downward),
                    ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35,right: 35,top: 8),
          child: Container(
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*0.14,
            decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            border: Border.all(
              color: Color(0xffF3F6F8),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25,right: 28),
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(Imagespath.div1),),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24,top: 14),
                          child: Text("Promo Code",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w700,fontSize: 16,),),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(top: 10,right: 26),
                          child: Text("-\$100.00",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w400,fontSize: 12,),),
                        ),
                      ],
                    ),
                     Padding(
                       padding: const EdgeInsets.only(left: 25),
                       child: Container(
                        width: MediaQuery.of(context).size.width*0.16,
                        height: MediaQuery.of(context).size.width*0.09,
                        decoration: BoxDecoration(
                          color: Color(0xffC6AB59),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(child: Text("ST#132",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),)),
                    ),
                     ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_downward),
                    ),               
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Image.asset(Imagespath.line,color: Color(0xff8F92A1),),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: addcart.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total:",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xff171717)),),
                Text(addcart[index]["price"].toString(),style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w800,fontSize: 16,color: Color(0xff171717)),),
              ],
            ),
          );
          },
        ),
         GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Shipping()));
          },
           child: Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35),
                    child: Container(
                      width: 350,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xffC6AB59),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    child: Padding(
          padding: const EdgeInsets.only(left: 120),
          child: Row(
            children: [
              Center(child: Text("CHECKOUT",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),)),
              Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Icon(Icons.arrow_right_alt,color: Colors.white,size: 30,),
              ),
            ],
          ),
        ),
 
                     ),
                  ),
         ),
                
    ]),
     bottomNavigationBar: const Padding(
       padding:  EdgeInsets.symmetric(horizontal: 23,vertical: 20),
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
          text: "User",
          ),
        ],
       ),
     ),
    );
  }
}