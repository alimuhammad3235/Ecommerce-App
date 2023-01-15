import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/cart.dart';
import 'package:ecommerceapp/views/categoryv1.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/signin.dart';
import 'package:flutter/material.dart';

class SinglePrdt extends StatelessWidget {
  List<Map> addto=[];
 SinglePrdt({super.key,required this.addto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView(
      children: [
      Stack(
        children: [Container(
          height: 420,
          width: 400,
          decoration:const BoxDecoration(
            color: Color(0xffF3F6F8),
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.only(left:36,top: 60,right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Category(fav: addto)));
                },
                child: Image.asset(Imagespath.arr1)),
              Image.asset(Imagespath.menu3),
            ],
          ),
        ),
       ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: addto.length,
        itemBuilder: (context, index) {
          return
          Stack(
           children: [
                Padding(
                  padding: const EdgeInsets.only(left: 185,top: 95),
                  child: Image.asset(Imagespath.speak2,height: 490,),
                ),
          
            const Padding(
             padding: EdgeInsets.only(left: 35,top: 120),
             child:  Align(
              alignment: Alignment.centerLeft,
              child: Text("SPEAKER",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff171717)),)),
           ),
              Padding(
           padding: EdgeInsets.only(left: 35,top: 140),
           child:  Align(
            alignment: Alignment.centerLeft,
            child: Text(addto[index]["name"],style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 24,color: Color(0xff171717)),)),
         ),
            const Padding(
           padding: EdgeInsets.only(left: 35,top: 225),
           child:  Align(
            alignment: Alignment.centerLeft,
            child: Text("From",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff171717)),)),
            ),
                Padding(
           padding: EdgeInsets.only(left: 35,top: 250),
           child:  Align(
            alignment: Alignment.centerLeft,
            child: Text(addto[index]["price"].toString(),style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),)),
         ),
          const Padding(
           padding: EdgeInsets.only(left: 35,top: 300),
           child:  Align(
            alignment: Alignment.centerLeft,
            child: Text("Available Colors",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w400,fontSize: 12,color: Color(0xff171717)),)),
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 330,horizontal: 35),
              child: Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: Color(0xffC6AB59),
                      borderRadius: BorderRadius.circular(5),
       
                    ),
                      child:const Icon(Icons.check),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Container(
                        width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        color: Color(0xffF8B6C3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:12),
                    child: Container(
                        width: 24,
                      height: 24,
                      decoration:  BoxDecoration(
                        color: Color(0xff171717),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
       
                ],
              ),
            ),
           
             ]);
        },
       ),
        const Padding(
           padding: const EdgeInsets.only(top: 500,left: 35),
           child: Align(
            alignment: Alignment.centerLeft,
            child: Text("Wireless, smart home speaker",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xff171717)),)),
         ),
           const Padding(
           padding: const EdgeInsets.only(top: 530,left: 35),
           child: Align(
            alignment: Alignment.centerLeft,
            child: Text("A wireless speaker with a dynamic acoustic\nperformance designed to be positioned up\nagainst the wall on a shelf or side table in your\nhome. Impressive sound compared to its size.",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w500,fontSize: 13),)),
         ),
         
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: ((context) => MyCart(addcart: addto,))));
        },
        child: Padding(
                    padding: const EdgeInsets.only(left: 35,right: 35,top: 630),
                    child: Container(
                      width: 350,
                      height: 44,
                      decoration: BoxDecoration(
                        color: const Color(0xffC6AB59),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text("ADD TO CART",style: TextStyle(fontFamily: "DM Sans",fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),)),  
                     ),
                  ),
      ),
      ]),
   ] ),
   
             );
  }
}