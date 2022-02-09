// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:socialmedia/constants/bottombar.dart';
// import 'package:socialmedia/register.dart';
// // import 'package:socialmedia/view/home.dart';
// import 'package:socialmedia/view/authentication/signup.dart';
//
//
// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);
//
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // resizeToAvoidBottomInset: true,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//
//             Image.asset('assets/images/login1.jpg'),
//
//              Padding(
//                padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                child: Text('Login',style: GoogleFonts.alice(fontSize: 40,fontWeight: FontWeight.bold,),),
//              ),
//
//             const SizedBox(
//               height: 10,
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
//               child: TextField(
//                 controller: emailController,
//                 decoration:  InputDecoration(
//                     hintText: 'email / phone number / user name',
//                     hintStyle: GoogleFonts.k2d(fontSize: 11),
//                     prefixIcon: const Icon(
//                       Icons.person,
//                       size: 17,
//                       color: Colors.grey,
//                     ),
//                     focusedBorder: const UnderlineInputBorder(
//                         borderSide: BorderSide(
//                             color: Colors.grey, width: 1.0))),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration:  InputDecoration(
//                   suffixIcon: const Icon(Icons.visibility_off, size: 17,
//                     color: Colors.grey,),
//                   hintText: 'Password',
//                   hintStyle: GoogleFonts.k2d(fontSize: 11),
//                   prefixIcon: const Icon(
//                     Icons.lock,
//                     size: 17,
//                     color: Colors.grey,
//                   ),
//                   focusedBorder: const UnderlineInputBorder(
//                       borderSide: BorderSide(
//                           color: Colors.grey, width: 1.0)),
//                 ),
//               ),
//             ),
//
//             const SizedBox(
//               height: 10,
//             ),
//             Center(
//               child: GestureDetector(
//                 onTap: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Bottom()));
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
//                   child: Container(
//                     height: 50,
//                     width: 350,
//                     child: const  Center(child: Text('LOGIN',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
//                     decoration: BoxDecoration(
//                       color: Colors.blue[200],
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:  [
//                 const Text("Don't have an Account ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                 TextButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
//                 }, child:  const Text('Sign Up',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
//               ],
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [
//                   Expanded(
//                     child: Divider(
//                       color: Colors.black,),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 8.0),
//                     child: Text('OR',style: TextStyle(fontWeight: FontWeight.bold),),
//                   ),
//                   Expanded(child: Divider(color: Colors.black,)),
//                 ],
//               ),
//             ),
//
//             // Padding(
//             //   padding: const EdgeInsets.only(right: 20.0),
//             //   child: Image.network(
//             //     'https://allaboutbasic.files.wordpress.com/2018/03/social-icons-in-the-sidebar.jpg',
//             //   ),
//             // ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
