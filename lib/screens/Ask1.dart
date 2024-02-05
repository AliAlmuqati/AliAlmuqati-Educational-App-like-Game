import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'list_Ask.dart';
import 'onboding/components/animated_btn.dart';
class Ask1 extends StatefulWidget {
  const Ask1({Key? key}) : super(key: key);

  @override
  State<Ask1> createState() => _Ask1State();
}

class _Ask1State extends State<Ask1> {
  bool isSignInDialogShown = false;
  bool isSignUpDialogShownn = false;
  late RiveAnimationController _btnAnimationController;
  late RiveAnimationController _btnAnimationController_up;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation("active", autoplay: false);
    _btnAnimationController_up = OneShotAnimation("active", autoplay: false);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.black26,),
      body: Stack(

        children: [
          Hero(
              tag: "",
              child:  Container(

                child: Image.asset(

                    'assets/Backgrounds/ask.jpg',
                    height: 900,
                    width: 1700,
                    fit:BoxFit.fill
                ),
              )
          ),
          Positioned(
              child: Align(

                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [



                    Container(
                      padding: EdgeInsets.all(20),
                      height: 200,
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomRight: Radius.circular(15.0),
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("x=Ahmed",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("هل هذه الطريقة الصحيحة لتعريف متغير نصي",style: TextStyle(fontSize: 16,color:Colors.white),),
                        ],
                      ),
                    ),
                    SizedBox(height: 100,),
                    Container(

                      // width: 350,



                        child:
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            AnimatedBtn1(

                              textt: "Yes",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.error,
                                  animType: AnimType.rightSlide,
                                  title: 'غير صجيجة',
                                  desc: 'لم تربح اي نقطة من نقاط الفوز',
                                  // btnCancelOnPress: () {},
                                  btnOkOnPress: () {},
                                )..show();
                              },
                            ),
                            SizedBox(width: 20,),
                            AnimatedBtn1(
                              textt: "No",
                              btnAnimationController: _btnAnimationController_up,
                              press: () {
                                AwesomeDialog(
                                  context: context,
                                  dialogType: DialogType.success,
                                  animType: AnimType.rightSlide,
                                  title: 'ممتاز جدا',
                                  desc: 'لقد حققت 10 من نقاط الفوز',
                                  // btnCancelOnPress: () {},
                                  btnOkOnPress: () {
                                    number_+=10;
                                  },
                                )..show();
                                
                              
                              },
                            ),

                          ],
                        )
                    ),

                    SizedBox(height: 50,),
                    AnimatedBtn(
                      textt: "متابعة",
                      btnAnimationController: _btnAnimationController_up,
                      press: () {
                     

                      },
                    ),
                  ],
                ),

              ))
        ],
      ) ,
    )    ;


  }
}


