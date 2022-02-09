
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmedia/constants/widgets.dart';
import 'package:socialmedia/register.dart';

import 'constants/instances.dart';
import 'controller/auth_controller.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
            child: Form(
              key: AuthenticationController.loginFormKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/login1.jpg'),
                  Container(
                    width: screenWidth * 0.76,
                    margin: EdgeInsets.only(left: screenWidth * 0.12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.alice(
                              textStyle: const TextStyle(fontSize: 40),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        TextFormField(
                          controller: authenticationController
                              .loginUserDetailController,
                          decoration: InputDecoration(
                              hintText: 'Phone Number',
                              hintStyle: GoogleFonts.k2d(fontSize: 15),
                              prefixIcon: const Icon(
                                Icons.alternate_email_sharp,
                                size: 20,
                                color: Colors.grey,
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 1.0))),
                          validator: (validate) {
                            return authenticationController
                                .validateUserDetail(validate!);
                          },
                        ),
                        SizedBox(
                          height: screenHeight * 0.01,
                        ),
                        TextFormField(
                          obscureText: true,
                          controller:
                          authenticationController.loginUserPassword,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: GoogleFonts.k2d(fontSize: 15),
                            suffixIcon: const Icon(Icons.visibility_off,size: 20,
                              color: Colors.grey,),
                            prefixIcon: const Icon(
                              Icons.lock,
                              size: 20,
                              color: Colors.grey,
                            ),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey, width: 1.0)),
                          ),
                          validator: (validate) {
                            return authenticationController
                                .validateLoginPassword(validate!);
                          },
                        ),

                        SizedBox(
                          height: screenHeight * 0.05,
                        ),

                        GestureDetector(
                          onTap: () async {
                            authenticationController.userLogin();

                          },
                          child: Container(
                            height: screenHeight * 0.06,
                            decoration:  const BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                 BorderRadius.all(Radius.circular(12))),
                            child: Center(
                              child: Text(
                                'Login',
                                style: GoogleFonts.k2d(
                                  fontWeight: FontWeight.bold,
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.02,
                  ),
                  Expanded(
                    child: Container(
                      width: screenWidth * 0.76,
                      margin: EdgeInsets.only(left: screenWidth * 0.12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Or',
                            style: GoogleFonts.k2d(color: Colors.grey[600]),
                          ),

                           SizedBox(
                            height: screenHeight * 0.02,
                          ),

                          Container(
                            height: screenHeight * 0.06,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                border: Border.all(
                                    width: 0.9, color: Colors.grey)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    authenticationController.signIn();
                                  },
                                  icon: Image.asset('assets/images/google.png'),
                                ),
                                
                                const Text('Login With Google',style: TextStyle(fontWeight: FontWeight.bold),)
                                
                              ],
                            ),
                          ),

                          SizedBox(
                            height: screenHeight * 0.02,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: GoogleFonts.k2d(color: Colors.grey),
                              ),
                              const SizedBox(
                                width: 7,
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(const SignupScreen());
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.k2d(
                                    color: Colors.blue,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              // SizedBox(height: 100,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );



  }
}
