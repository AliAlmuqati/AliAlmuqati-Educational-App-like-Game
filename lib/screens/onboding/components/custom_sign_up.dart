import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;


import '../../../data/sing_up.dart';
import '../onboding_screen.dart';
GlobalKey<FormState> formstate = GlobalKey<FormState>();
SignupData signupData = SignupData(Get.find());
Future<Object?> customSignupDialog(BuildContext context,
    {required ValueChanged onClosed}) {
  late TextEditingController password=new TextEditingController();
  late TextEditingController username=new TextEditingController();
  late TextEditingController email=new TextEditingController();



  signUp(String username,String email,String password ) async {
    var url="http://192.168.0.188:8012/game/auth/signup.php";
    var res=await http.post(Uri.parse(url),body: {
      "user_name" : username ,
      "users_password" : password  ,
      "user_email" : email,
    });
      print("============================ss=== Controller $res ");
      print(res.body);
      if(res.body=='{"status":"success"}'){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OnboardingScreen()));
       }else {
        Get.defaultDialog(title: "فشل" , middleText: "البريد الالكتروني او رقم الهاتف مسجل مسبقا") ;

      }
  }
  return showGeneralDialog(
      barrierDismissible: true,
      barrierLabel: "أنشاء حساب",
      context: context,
      transitionDuration: const Duration(milliseconds: 400),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        Tween<Offset> tween = Tween(begin: Offset(0, -1), end: Offset.zero);
        return SlideTransition(
            position: tween.animate(
                CurvedAnimation(parent: animation, curve: Curves.easeInOut)),
            child: child);
      },
      pageBuilder: (context, _, __) =>
          Center(
            child: Container(
              height: 620,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: const BorderRadius.all(Radius.circular(40))),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset:
                false, // avoid overflow error when keyboard shows up
                body: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(children: [

                      const Text(
                        "أنشاء حساب",
                        style: TextStyle(fontSize: 34, fontFamily: "Poppins"),
                      ),
                      const Text(
                        "الاسم",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                        child: TextFormField(
                          controller: username,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          onSaved: (name) {},
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SvgPicture.asset("assets/icons/User.svg"),
                              )),
                        ),
                      ),
                      const Text(
                        "البريد الالكتروني",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                        child: TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          onSaved: (email) {},
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SvgPicture.asset("assets/icons/email.svg"),
                              )),
                        ),
                      ),
                      const Text(
                        "كلمة السر",
                        style: TextStyle(color: Colors.black54),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 16),
                        child: TextFormField(
                          controller: password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "";
                            }
                            return null;
                          },
                          onSaved: (password) {},
                          obscureText: true,
                          decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: SvgPicture.asset("assets/icons/password.svg"),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 24),
                        child: ElevatedButton.icon(
                            onPressed: () {

                              print(username.text);
                              print(email.text);
                              print(password.text);

                              // signIn(context);
                              signUp(username.text, email.text, password.text);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFF77D8E),
                                minimumSize: const Size(double.infinity, 56),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(25),
                                        bottomRight: Radius.circular(25),
                                        bottomLeft: Radius.circular(25)))),
                            icon: const Icon(
                              CupertinoIcons.arrow_right,
                              color: Color(0xFFFE0037),
                            ),
                            label: const Text("انشاء حساب")),
                      ),
                      // SignUpForm(),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(),
                          ),

                          Expanded(
                            child: Divider(),
                          ),
                        ],
                      ),

                    ]),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -48,

                      child: CircleAvatar(
                        radius: 16,
                        backgroundColor: Colors.white,
                        child: IconButton(onPressed: (){
                          Navigator.pop(context);

                        }, icon: Icon(Icons.close, color: Colors.black)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )).then(onClosed);
}
