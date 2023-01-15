import 'package:ecommerceapp/views/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/images_paths.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 33,top: 25),
            child: Row(
              children: [
                Image.asset(Imagespath.img5),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Perth, Western Australia",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 12),),
                ),
              ],
            ),
          ),
           const Padding(
              padding:  EdgeInsets.only(left: 35,top: 30),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Getting Started",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 24),)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35,top: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Create an account to continue!",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff747474)),)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35,top: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Email",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 12,color:Color(0xff747474)),)),
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 35,right:35,top: 8 ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding:  EdgeInsets.only(right: 25),
                    child: Icon(Icons.email_outlined,color: Color(0xff171717),),
                  ),
                  hintText: "sajinTamangUIUX@figma.com",
                  hintStyle: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),
                ),
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(left: 35,top: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(" Username",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 12,color:Color(0xff8F92A1)),)),),
         const Padding(
              padding:  EdgeInsets.only(left: 35,right:35,top: 8 ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding:  EdgeInsets.only(right: 25),
                    child: Icon(Icons.person_outline,color: Color(0xff171717),),
                  ),
                  hintText: "SajinUIUX",
                  suffixIcon: Icon(Icons.check,color: Color(0xff02C697),),
                  hintStyle: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),
                ),
              ),),
                         const Padding(
              padding: EdgeInsets.only(left: 35,top: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(" Password",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 12,color:Color(0xff8F92A1)),)),),
         const Padding(
              padding:  EdgeInsets.only(left: 35,right:35,top: 8 ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding:  EdgeInsets.only(right: 25),
                    child: Icon(Icons.lock_outline,color: Color(0xff171717),),
                  ),
                  hintText: "• • • • • • • •",
                  suffixIcon: Icon(Icons.visibility_outlined,color: Color(0xff171717),),
                  hintStyle: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),
                ),
              ),),
              Padding(
                padding: const EdgeInsets.only(left: 35,top: 16),
                child: Row(
                  children:  [
                    const Icon(Icons.check_box_outlined),
                     Column(
                       children: const [
                         Padding(
                           padding:  EdgeInsets.only(left: 7),
                           child: Text("By creating an account, you agree to our",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 14,color: Color(0xff171717)),),
                         ),
                      Padding(
                        padding:  EdgeInsets.only(right: 120),
                        child: Text(" Term \& Conditions",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 15,color: Color(0xff171717),),),
                      ),
                       ],
                     ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top:36),
                  child: Container(
                    width: 350,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xffC6AB59),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Stack(
                          children: const [
                             Center(child: Text("SIGN UP",style: TextStyle(fontFamily: "DM Sans",fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),)),
                              Padding(
                                padding:  EdgeInsets.only(right: 10),
                                child:  Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.login,size: 25,color: Colors.white,)),
                              ),
                          ],
                        ),
                   ),
                ),
              ),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 16),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account? ",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff747474)),),
                    Text("Sign in",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w800,fontSize: 15,color: Color(0xff171717),),),
                  ],
                ),
              ),
            ),
            Image.asset(Imagespath.line,width: 400,color: const Color(0xffF3F6F8),),
             Padding(
               padding: const EdgeInsets.only(left: 35,right: 35,top: 30),
               child: Container(
                    width: 350,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xff3C79E6),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Stack(
                          children: const [
                             Center(child: Text("Connect with Facebook",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 15,color:Colors.white),),),
                              Padding(
                                padding:  EdgeInsets.only(right: 10),
                                child:  Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(Icons.login,size: 25,color: Colors.white,)),
                              ),
                          ],
                        ),
                   ),
             ),
        ]),
        
    );
  }
}