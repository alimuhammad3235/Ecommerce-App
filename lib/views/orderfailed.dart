import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/orderreview.dart';
import 'package:ecommerceapp/views/paysuccess.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OrderFail extends StatelessWidget {
  const OrderFail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
        children: [
        Padding(
          padding: const EdgeInsets.only(left:36,top: 40,right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PaySuccess()));
                },
                child: Image.asset(Imagespath.arr1)),
              const Text("ORDER COMPLETE",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              Icon(Icons.more_horiz),
            ],
          ),
    ),
     Padding(
      padding: const EdgeInsets.only(top: 168),
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
          color: Color(0xffF8B6C3),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Image.asset(Imagespath.sh1),
      ),
    ),
     Padding(
       padding: const EdgeInsets.only(top: 24),
       child: Text("Order Failed",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 24,color: Color(0xff171717)),),
     ),
      Padding(
       padding: const EdgeInsets.only(top: 8),
       child: Text("Your payment occurred an error.",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 14),),
     ),
     Padding(
       padding: const EdgeInsets.only(top: 20),
       child: Image.asset(Imagespath.line,color: Color(0xffF3F6F8),),
     ),
     Padding(
       padding: const EdgeInsets.only(top: 40),
       child: Image.asset(Imagespath.sh2),
     ),
    const Padding(
       padding: const EdgeInsets.only(top: 8),
       child: Text("Do not worry 😉",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 14),),
     ),
      const Padding(
       padding: const EdgeInsets.only(top: 8),
       child: Text("            Keep calm, sometimes it happens\n\nPlease go back and check your payment method\n\n                            or contact us",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12),),
     ),
     GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: ((context) => OrderReview())));
      },
       child: Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 50),
        child: Container(
          width: MediaQuery.of(context).size.width*1,
          height:MediaQuery.of(context).size.height*0.07,
          decoration: BoxDecoration(
            color: Color(0xffC6AB59),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                  Padding(
                  padding: const EdgeInsets.only(right: 50),
                  child: Icon(Icons.arrow_back,color: Colors.white,size: 30,),
                ),
                Text("REVIEW PAYMENT METHOD",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),),
              
              ],
            ),
          ),
     
        ),
         ),
     ),
    ]),);
  }
}