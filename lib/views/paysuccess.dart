import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/orderfailed.dart';
import 'package:ecommerceapp/views/shipping.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaySuccess extends StatelessWidget {
  const PaySuccess({super.key});

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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Shipping()));
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
          color: Color(0xffC6AB59),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Image.asset(Imagespath.sh1),
      ),
    ),
     Padding(
       padding: const EdgeInsets.only(top: 24),
       child: Text("Payment Successful!",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 24,color: Color(0xff171717)),),
     ),
      Padding(
       padding: const EdgeInsets.only(top: 8),
       child: Text("Orders will arrive in 3 days!",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff171717)),),
     ),
     Padding(
       padding: const EdgeInsets.only(top: 20),
       child: Image.asset(Imagespath.line,color: Color(0xffF3F6F8),),
     ),
      Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF3F6F8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(Imagespath.beo1),
          ),
            Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF3F6F8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(Imagespath.speaker),
          ),
            Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF3F6F8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(Imagespath.head2),
          ),
            Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              color: Color(0xffF3F6F8),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(Imagespath.img3),
          ),
        ],),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 35,right: 35,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Beosound 1",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
          Text("Beosound…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
        Text("Beoplay H…",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
        Text("Beoplay A9",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
        ],),
      ),
       GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => OrderFail())));
        },
         child: Padding(
           padding: const EdgeInsets.only(left: 35,right: 35,top: 80),
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
                   Center(child: Text("SEE ORDER DETAIL",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),)),
                   Padding(
                     padding: const EdgeInsets.only(left: 50),
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