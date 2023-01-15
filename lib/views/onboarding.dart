import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/signin.dart';
import 'package:flutter/material.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
              Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 250,top: 35),
                child: Image.asset(Imagespath.img1),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 45,top: 60),
              child: Image.asset(Imagespath.img3),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240),
              child: Image.asset(Imagespath.img2),
            ),
            ]),
            Image.asset(Imagespath.img4),
            const Padding(
              padding:  EdgeInsets.only(top: 50),
              child: Text("Welcome to STStore !",style: TextStyle(fontFamily: "DM Sans",fontWeight: FontWeight.w700,fontSize: 24),),
            ),
             const Padding(
               padding: EdgeInsets.symmetric(vertical: 10),
               child: Text("With long experience in the audio industry,\n \n    we create the best quality products",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff747474) ),),
             ),
             GestureDetector(
              onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignIn(),));
              },
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 35),
                 child: Container(
                  width: MediaQuery.of(context).size.width*4,
                  height:MediaQuery.of(context).size.height*0.070,
                  decoration: BoxDecoration(
                    color: const Color(0xffC6AB59),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Stack(
                        children: const [
                           Center(child: Text("GET STARTED",style: TextStyle(fontFamily: "DM Sans",fontWeight: FontWeight.w500,fontSize: 13,color: Colors.white),)),
                            Padding(
                              padding:  EdgeInsets.only(right: 10),
                              child:  Align(
                                alignment: Alignment.centerRight,
                                child: Icon(Icons.arrow_right_alt,size: 30,color: Colors.white,)),
                            ),
                        ],
                      ),
                 ),
               ),
             ),
        ],
      ),
    );
  }
}