import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/orderreview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Shipping extends StatelessWidget {
  const Shipping({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: MediaQuery.of(context).size.width*1,
              height: MediaQuery.of(context).size.height*0.7,
              decoration: BoxDecoration(
              color: Color(0xffC6AB59),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 148,right: 147,top: 40),
                    child: Image.asset(Imagespath.dp1),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text("Sajin",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 20,color: Color(0xff171717)),),
                  ),
                   Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text("sajinTamangUIUX@figma.com",style: TextStyle(fontFamily: 'DMSans-Medium',fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff171717)),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top:36),
                    child: Container(
                        width: MediaQuery.of(context).size.width*1,
                        height: MediaQuery.of(context).size.height*0.36810,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                        color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                               Text("Order #CS1020",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 13,color: Color(0xff171717)),),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderReview()));
                                  },
                                  child: Text("•  In Progress",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 13,color: Color(0xff9923FF)),)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Image.asset(Imagespath.line,color: Color(0xffF3F6F8),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24,right: 24,top: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    width: 79,
                                height: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    color: Color(0xffF3F6F8),
                                    ),
                                    child: Image.asset(Imagespath.beo1),
                                  ),
                              Container(
                                width: 79,
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF3F6F8),
                                ),
                                    child: Image.asset(Imagespath.speaker),
                              ),
                              Container(
                                width: 79,
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                color: Color(0xffF3F6F8),
                                ),
                                    child: Image.asset(Imagespath.head2),
                              ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 24,right: 24,top:8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text("Beosound 1",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 11,color: Color(0xff171717)),),Text("Beosound…",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 11,color: Color(0xff171717)),),Text("Beoplay H…",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 11,color: Color(0xff171717)),),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Text("Your order is on its way!",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff171717)),),
                            ),
                             Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text("Orders will arrive in 3 days!",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff171717)),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                width: 120,
                                height: 35,
                                decoration: BoxDecoration(
                                  color: Color(0xffC6AB59),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                                child: Center(child: Text("TRACK",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white),)),
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35,right: 35,top: 20),
              child: ListTile(
                leading: Icon(Icons.person_outlined,color: Color(0xff171717),),
                title: Text("My Account",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w700,fontSize: 14),),
                subtitle:Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Text("Edit your informations",style: TextStyle(fontFamily: 'DMSans-Bold',fontWeight: FontWeight.w300,fontSize: 12),),
                ), 
                trailing: Icon(Icons.arrow_right_alt,color: Color(0xff171717),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 10),
              child: Image.asset(Imagespath.line,color: Color(0xff8f92A1),),
            ),
        ],
      ),
     bottomNavigationBar: const  Padding(
       padding:  EdgeInsets.symmetric(horizontal: 23,vertical: 15),
       child: GNav(
        activeColor: Colors.black,
        gap: 5,
        padding: EdgeInsets.all(15),
       tabBackgroundColor: Color(0xffC6AB59),
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