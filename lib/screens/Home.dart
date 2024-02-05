import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/screens/list_Ask.dart';

import '../main.dart';
import 'List_game.dart';
import 'My_drawer_header.dart';
import 'onboding/components/animated_btn.dart';
import 'onboding/components/custom_sign_in.dart';
import 'onboding/components/custom_sign_up.dart';
import 'onboding/onboding_screen.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isSignInDialogShown = false;
  bool isSignUpDialogShownn = false;
  late RiveAnimationController _btnAnimationController;
  late RiveAnimationController _btnAnimationController_up;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation("active", autoplay: false);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return
      Stack(

        children: [
          Hero(
              tag: "",
              child:  Container(

                child: Image.asset(

                    'assets/Backgrounds/Spline.png',
                    height: 900,
                    width: 1700,
                    fit:BoxFit.fill
                ),
              )
          ),
          Positioned(
              child: Align(

                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    SizedBox(height:40,),

                    Container(
                      height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              bottomRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0),
                              bottomLeft: Radius.circular(40.0)),
                        ),
                         child: Center(child: Text(" لقد حققت ${number_} من 400 لنقاط الفوز ",style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.bold),))),
                    SizedBox(height: 500,),
                    Container(

                        // width: 350,



                        child: Column(
                          children: [

                            AnimatedBtn1(
                              
                              textt: "play",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const List_Game()),
                                );
                              },
                            ),

                            AnimatedBtn1(
                              textt: "Setting",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                // _btnAnimationController.isActive = true;
                                // Future.delayed(Duration(milliseconds: 800), () {
                                //   setState(() {
                                //     isSignUpDialogShownn = true;
                                //   });
                                //   customSignupDialog(context, onClosed: (_) {
                                //     setState(() {
                                //       isSignUpDialogShownn = false;
                                //     });
                                //   });
                                // });
                              },
                            ),

                            AnimatedBtn1(
                              textt: "profile",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                // _btnAnimationController.isActive = true;
                                // Future.delayed(Duration(milliseconds: 800), () {
                                //   setState(() {
                                //     isSignUpDialogShownn = true;
                                //   });
                                //   customSignupDialog(context, onClosed: (_) {
                                //     setState(() {
                                //       isSignUpDialogShownn = false;
                                //     });
                                //   });
                                // });
                              },
                            ),
                          ],
                        )
                    ),




                  ],
                ),

              ))
        ],
      );


  }
}








enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}