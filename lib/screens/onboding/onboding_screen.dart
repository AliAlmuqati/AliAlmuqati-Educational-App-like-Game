import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:rive_animation/screens/onboding/components/animated_btn.dart';
import 'package:rive_animation/screens/onboding/components/custom_sign_in.dart';

import 'components/custom_sign_up.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
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
    return Scaffold(
        body:
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
                      SizedBox(height: 540,),
                      Container(

                        width: 180,



                        child: Column(
                           children: [

                            AnimatedBtn(
                              textt: "تسجيل دخول",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                _btnAnimationController.isActive = true;
                                Future.delayed(Duration(milliseconds: 800), () {
                                  setState(() {
                                    isSignInDialogShown = true;
                                  });
                                  customSigninDialog(context, onClosed: (_) {
                                    setState(() {
                                      isSignInDialogShown = false;
                                    });
                                  });
                                });
                              },
                            ),
                            SizedBox(
                              height:20 ,
                            ),
                            AnimatedBtn(
                              textt: "انشاء حساب",
                              btnAnimationController: _btnAnimationController,
                              press: () {
                                _btnAnimationController.isActive = true;
                                Future.delayed(Duration(milliseconds: 800), () {
                                  setState(() {
                                    isSignUpDialogShownn = true;
                                  });
                                  customSignupDialog(context, onClosed: (_) {
                                    setState(() {
                                      isSignUpDialogShownn = false;
                                    });
                                  });
                                });
                              },
                            ),
                          ],
                        )
                      ),




                    ],
                  ),

                ))
          ],
        ),

    //     Stack(
    //   children: [
    //     Positioned(
    //         width: MediaQuery.of(context).size.width * 1.7,
    //         bottom: 200,
    //         left: 100,
    //         child: Image.asset('assets/Backgrounds/Spline.png')),
    //     Positioned.fill(
    //         child: BackdropFilter(
    //       filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
    //     )),
    //     const RiveAnimation.asset('assets/RiveAssets/shapes.riv'),
    //     Positioned.fill(
    //         child: BackdropFilter(
    //       filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
    //       child: const SizedBox(),
    //     )),
    //     AnimatedPositioned(
    //       duration: Duration(milliseconds: 240),
    //       top: isSignInDialogShown ? -50 : 0,
    //       height: MediaQuery.of(context).size.height,
    //       width: MediaQuery.of(context).size.width,
    //       child:
    //       SafeArea(
    //         child: Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 32),
    //           child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Spacer(),
    //                   SizedBox(
    //                   width: 260,
    //                   child: Column(children: [
    //                     Text(
    //                       "مرحبا بك في لعبتنا",
    //                       style: TextStyle(
    //                           fontSize: 60, fontFamily: "Poppins", height: 1.2),
    //                     ),
    //                     SizedBox(
    //                       height: 16,
    //                     ),
    //                     Text(
    //                         " ")
    //                   ]),
    //                 ),
    //                 const Spacer(
    //                   flex: 2,
    //                 ),
    //                 AnimatedBtn(
    //                   textt: "تسجيل دخول",
    //                   btnAnimationController: _btnAnimationController,
    //                   press: () {
    //                     _btnAnimationController.isActive = true;
    //                     Future.delayed(Duration(milliseconds: 800), () {
    //                       setState(() {
    //                         isSignInDialogShown = true;
    //                       });
    //                       customSigninDialog(context, onClosed: (_) {
    //                         setState(() {
    //                           isSignInDialogShown = false;
    //                         });
    //                       });
    //                     });
    //                   },
    //                 ),
    //                 SizedBox(
    //                   height:20 ,
    //                 ),
    //                 AnimatedBtn(
    //                   textt: "انشاء حساب",
    //                   btnAnimationController: _btnAnimationController,
    //                   press: () {
    //                     _btnAnimationController.isActive = true;
    //                     Future.delayed(Duration(milliseconds: 800), () {
    //                       setState(() {
    //                         isSignUpDialogShownn = true;
    //                       });
    //                       customSignupDialog(context, onClosed: (_) {
    //                         setState(() {
    //                           isSignUpDialogShownn = false;
    //                         });
    //                       });
    //                     });
    //                   },
    //                 ),
    //                 SizedBox(
    //                   height:30 ,
    //                 )
    //
    //               ]),
    //         ),
    //       ),
    //     )
    //   ],
    // )
    );
  }
}
