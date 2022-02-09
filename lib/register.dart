import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:socialmedia/loginscreen.dart';
// import 'package:socialmedia/view/authentication/login.dart';
// // import 'package:sizer/sizer.dart';
import 'package:socialmedia/view/authentication/otp_screen.dart';

import 'constants/instances.dart';
import 'controller/auth_controller.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Image.asset('assets/images/signup(1).jpg',height: 250,width: 500,),

                  // Image.asset(
                  //   'Assets/signup2.png',
                  // ),
                  // const Divider(
                  //   thickness: 1,
                  //   color: Colors.black,
                  //   height: 1,
                  //   indent: 10,
                  //   endIndent: 10,
                  // ),

                  Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: Form(
                        key: AuthenticationController.signUpFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sign Up',
                              style: GoogleFonts.alice(
                                  fontWeight: FontWeight.w700, fontSize: 40),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                              controller:
                              authenticationController.fullNameController,
                              decoration: InputDecoration(
                                  hintText: 'Full Name',
                                  hintStyle: GoogleFonts.k2d(fontSize: 11),
                                  prefixIcon: const Icon(
                                    Icons.person,
                                    size: 17,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0))),
                              validator: (validate) {
                                return authenticationController
                                    .validateFullName(validate!);
                              },
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                                controller:
                                authenticationController.userNameController,
                                decoration: InputDecoration(
                                    hintText: 'User Name',
                                    hintStyle: GoogleFonts.k2d(fontSize: 11),
                                    prefixIcon: const Icon(
                                      Icons.verified_user,
                                      size: 17,
                                      color: Colors.grey,
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.grey, width: 1.0))),
                                validator: (validate) {
                                  return authenticationController
                                      .validateUserName(validate!);
                                }),
                            const SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                              controller:
                              authenticationController.phoneController,
                              decoration: InputDecoration(
                                  hintText: 'Phone Number',
                                  hintStyle: GoogleFonts.k2d(fontSize: 11),
                                  prefixIcon: const Icon(
                                    Icons.alternate_email_sharp,
                                    size: 17,
                                    color: Colors.grey,
                                  ),
                                  focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 1.0))),
                              validator: (validate) {
                                return authenticationController
                                    .validatePhone(validate!);
                              },
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                              controller:
                              authenticationController.passwordController,
                              decoration: InputDecoration(
                                hintText: 'Password',
                                hintStyle: GoogleFonts.k2d(fontSize: 11),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                  size: 17,
                                  color: Colors.grey,
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.grey, width: 1.0)),
                              ),
                              obscureText: true,
                              validator: (validate) {
                                return authenticationController
                                    .validatePassword(validate!);
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: GestureDetector(
                                onTap: () async {
                                  final value =
                                  await authenticationController.signUp();
                                  if (value == "send") {
                                    Get.to(const OtpScreen());
                                  }

                                },
                                child: Container(
                                  height: screenHeight * 0.06,
                                  width: screenWidth * 0.8,
                                  decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                                  child: Center(
                                    child: Text(
                                      'Sign Up',
                                      style: GoogleFonts.k2d(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:  [
                                const Text("Already have an Account ?",style: TextStyle(color: Colors.black),),
                                TextButton(onPressed: (){
                                  Navigator.pop(context);
                                }, child: const Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
                              ],
                            ),

                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
