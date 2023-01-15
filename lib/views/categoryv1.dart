import 'package:ecommerceapp/utils/images_paths.dart';
import 'package:ecommerceapp/views/home.dart';
import 'package:ecommerceapp/views/singleprdt.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget  {
  List<Map> fav=[];
   Category({super.key, required this.fav});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category>with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context)  {
    TabController _tabcontroller=TabController(length: 4,vsync: this);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffC6AB59),
        onPressed: (){
          showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            backgroundColor: Color(0xffFFFFFF),
            context: context, 
            shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical( 
            top: Radius.circular(10.0),
          ),
        ),
            builder: (BuildContext context) {
            return Container(
            height: MediaQuery.of(context).size.height * 0.80,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 35,top: 40),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Gender",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff171717)),)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                           color: Color(0xffC6AB59),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Men",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xff171717)),)),
                        ),
                        Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                           color: Color(0xffF3F6F8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Women",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xff171717)),)),
                        ),
                        Container(
                          width: 100,
                          height: 45,
                          decoration: BoxDecoration(
                           color: Color(0xffF3F6F8),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text("Both",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 14,color: Color(0xff171717)),)),
                        ),
                      ],
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(left: 35,top: 20),
                     child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Price Rate",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff171717)),)),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Image.asset(Imagespath.price,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35,vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                        width: 155,
                        height: 44,
                          decoration: BoxDecoration(
                             color: Color(0xffF3F6F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text("Min",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(Icons.arrow_drop_down,color: Colors.white,),
                                ),
                              ],
                            ),
                        ),
                        Container(
                        width: 155,
                        height: 44,
                          decoration: BoxDecoration(
                             color: Color(0xffF3F6F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Text("Max",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 16,color: Colors.white),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Icon(Icons.arrow_drop_down,color: Colors.white,),
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(Imagespath.line),
                   const Padding(
                     padding: const EdgeInsets.only(left: 35,top: 20),
                     child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Color",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 16,color: Color(0xff171717)),)),
                   ),
                  Row(
                    children: [
                    Padding(
    padding: const EdgeInsets.only(left: 30),
    child: Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xffC6AB59),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(Icons.check),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 12),
    child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff02C697),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
  ),
    Padding(
      padding: const EdgeInsets.only(left: 13),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xffF8B6C3),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff3C79E6),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 14),
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff171717),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
     Padding(
       padding: const EdgeInsets.only(left: 14),
       child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Color(0xff8F92A1),
          borderRadius: BorderRadius.circular(10),
        ),
    ),
     ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Image.asset(Imagespath.line),
                  ),
                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 35,vertical:24),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Container(
                                width: 210,
                                height: 44,
                                decoration: BoxDecoration(
                                 color: Color(0xffC6AB59),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(child: Text("APPLY FILTERS (4)",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Colors.white),)),
                              ),
                               Container(
                            width: 100,
                            height: 45,
                            decoration: BoxDecoration(
                             color: Color(0xffF3F6F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(child: Text("RESET",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white)),)),
                          
                       ],
                     ),
                   ),
                ],
              ),
              
            );
            
          });
        },
      child: Image.asset(Imagespath.menu3)),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left:36,top: 60,right: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: Image.asset(Imagespath.arr1)),
              const Text("SPEAKERS",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 12,color: Color(0xff171717)),),
              Image.asset(Imagespath.opt1),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: widget.fav.length,
          itemBuilder: (context, index) {
            return 
           GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SinglePrdt(addto: widget.fav)));
            },
             child: Stack(
              children: [Padding(
                padding:  EdgeInsets.only(left: 15,right: 15,top: 100),
                child: Image.asset(Imagespath.base2,height: 230,width: 900,),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 40,top: 20),
                child: Image.asset(Imagespath.speak2,height:205,width: 305,),
              ),
              Column(
                children:  [
           
                  Padding(
                     padding: EdgeInsets.only(left: 90,top: 220),
                     child: Text(widget.fav[index]["name"],style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 26,color: Color(0xff171717)),)
                     
                   ),
                   
                  const Padding(
                     padding: EdgeInsets.only(left: 90,top: 4),
                     child: Text("Innovative, wireless home speaker",style: TextStyle(fontFamily: "DMSans-Regular",fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff171717)),),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(top:24,left: 90),
                      child: Image.asset(Imagespath.indi),
                    ),
                ],
              ),
                ]),
           );
          }
        ),
    
      Stack(children: [
        ]),
     
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            child:  TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: _tabcontroller,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
              
                Tab(text: "View all",),
                Tab(text: "Portable",),
                Tab(text: "Multiroom",),
                Tab(text: "Architecture",),
            ]),
          ),
        ),
        Image.asset(Imagespath.line,color: Color(0xffF3F6F8),),
       
        Stack(
          children: [Padding(
            padding: const EdgeInsets.only(top: 24,left: 35,right: 35),
            child: Container(
              height: 112,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xffF3F6F8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Image.asset(Imagespath.beo1),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text("Beosound 1",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 18,color: Color(0xff171717)),),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("4.5",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xff171717)),),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6,),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xff8F92A1),
                            ),
                          ),
                          ],
                        ),
                           Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("\$1,600",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w500,fontSize: 13,color: Color(0xff171717)),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ]),
       Stack(
          children: [Padding(
            padding: const EdgeInsets.only(top: 16,left: 35,right: 35,bottom: 10),
            child: Container(
              height: 112,
              width: 400,
              decoration: BoxDecoration(
                color: Color(0xffF3F6F8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                children: [
                  Image.asset(Imagespath.img3),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Text("Beoplay A9",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w700,fontSize: 18,color: Color(0xff171717)),),
                        ),
                        Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text("4.5",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w600,fontSize: 15,color: Color(0xff171717)),),
                            ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6,),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xffC6AB59),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: Container(
                              width: 6,
                              height: 6,
                              color: Color(0xff8F92A1),
                            ),
                          ),
                          ],
                        ),
                         const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Text("\$1,600",style: TextStyle(fontFamily: "DMSans-Bold",fontWeight: FontWeight.w500,fontSize: 13,color: Color(0xff171717)),),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
      ]),
           ]),
    );
  }
}

