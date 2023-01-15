import 'package:ecommerceapp/main.dart';
import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/orderfailed.dart';
import 'package:ecommerceapp/views/paysuccess.dart';
import 'package:ecommerceapp/views/shipping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderReview extends StatelessWidget {
  const OrderReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left:36,top: 40,right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shipping()));
                },
                child: Image.asset(Imagespath.arr1)),
              const Text("ORDER REVIEW",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              Icon(Icons.more_horiz),
            ],
          ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 30,left: 35,right: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Text("Products",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
           Icon(Icons.arrow_circle_down),
        ],
      ),
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 35,top: 15),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: Color(0xffF3F6F8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(Imagespath.beo1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(Imagespath.speaker),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(Imagespath.head2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(Imagespath.img3,width: 20,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffF3F6F8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(Imagespath.head2,width: 20,),
              ),
            ),
          ],
        ),
      ),
    ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 35,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
           Text("Beosound 1",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Beosound Ba…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 8),
               child: Text("Beoplay H4 2…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
             ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Beoplay H4 2…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              ),
               Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Beoplay H4 2…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              ),
        ],),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Image.asset(Imagespath.line,color: Color(0xffF3F6F8),),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 35,top: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text("SHIPPING",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 10),)),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 35,right: 35),
      child: ListTile(
        leading: Image.asset(Imagespath.dart1),
        title: Text("139 Haystreet,Perth",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 14),),
        trailing: Container(
          width: 65,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xffC6AB59),
          ),
          child: Center(child: Text("Change",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 14),)),
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
                    child: Icon(Icons.shopping_cart)),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 50,top: 20),
                          child: Text("Standard",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w700,fontSize: 16,),),
                        ),
                          Padding(
                          padding: const EdgeInsets.only(top: 5,left: 55,
                          right: 26),
                          child: Text("2-3 days",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w400,fontSize: 12,),),
                        ),
                      ],
                    ),
                     
                        Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: Icon(Icons.arrow_downward),
                        ),
           ] ),
          ),
          ),
          ),
         const Padding(
      padding: const EdgeInsets.only(left: 35,top: 15),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text("PAYMENT",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 10),)),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 35,right: 35,top: 12),
      child: Container(
        width: MediaQuery.of(context).size.width*1,
        height: MediaQuery.of(context).size.height*0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff171717),
        ),
        child: ListTile(
          leading: Image.asset(Imagespath.p1),
          title: const Text("* * * *    9000",style:  TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w700,fontSize: 18,color: Colors.white),),
          trailing: Container(
            width: MediaQuery.of(context).size.width*0.17,
            height: MediaQuery.of(context).size.height*0.04,
            decoration: BoxDecoration(
              color: Color(0xffC6AB59),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Center(child: Text("Change",style:  TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w600,fontSize: 14,)),
          ),
        ),
      ),
    ),
    ),
    Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Image.asset(Imagespath.line),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 35,right: 35,top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Shipping",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12),),
          Text("Free",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12),),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w800,fontSize: 14),),
          Text("\$9800",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w900,fontSize: 14),),
        ],
      ),
    ),
    GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>PaySuccess()));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
        child: Container(
          width: MediaQuery.of(context).size.width*1,
          height:MediaQuery.of(context).size.height*0.07,
          decoration: BoxDecoration(
            color: Color(0xffC6AB59),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                Center(child: Text("PLACE ORDER",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),)),
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
          );
  }
}