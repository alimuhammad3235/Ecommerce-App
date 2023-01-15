import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/signup.dart';
import 'package:flutter/material.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 33,top: 66),
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
              padding:  EdgeInsets.only(left: 35,top: 61),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Let’s Sign You In",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 24),)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35,top: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Welcome back, you’ve been missed!",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 14,color:Color(0xff747474)),)),
            ),
             const Padding(
              padding: EdgeInsets.only(left: 35,top: 40),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Username or Email",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 12,color:Color(0xff747474)),)),
            ),
           const Padding(
              padding:  EdgeInsets.only(left: 35,right:35,top: 8 ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding:  EdgeInsets.only(right: 25),
                    child: Icon(Icons.person,color: Color(0xff171717),),
                  ),
                  hintText: "Username",
                  hintStyle: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w700,fontSize: 16,color: Color(0xff171717)),
                ),
              ),
            ),
           const Padding(
              padding: EdgeInsets.only(left: 35,top: 40),
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUp()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 35,right: 35,top:80),
                  child: Container(
                    width: 350,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xffC6AB59),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:  Stack(
                          children: const [
                             Center(child: Text("SIGN IN",style: TextStyle(fontFamily: "DM Sans",fontWeight: FontWeight.w500,fontSize: 15,color: Colors.white),)),
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
                    Text("Don't have an account?",style: TextStyle(fontFamily: "DMSans-Medium",fontWeight: FontWeight.w500,fontSize: 15,color:Color(0xff747474)),),
                    Text("Sign up",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 17,color: Color(0xff171717),),),
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
        ],
      ),
    );
  }
}