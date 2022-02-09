//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// import 'login.dart';
//
// class Signup extends StatefulWidget {
//   const Signup({Key? key}) : super(key: key);
//
//   @override
//   _SignupState createState() => _SignupState();
// }
//
// class _SignupState extends State<Signup> {
//
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.asset('assets/images/signup(1).jpg',height: 250,width: 500,),
//              Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 50),
//               child: Text('Sign Up',style: GoogleFonts.alice(fontSize: 30,fontWeight: FontWeight.bold),),
//             ),
//
//             const SizedBox(
//               height: 5,
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 40),
//               child: TextField(
//                 decoration:  InputDecoration(
//                     prefixIcon: const Icon(Icons.person),
//                     border:   OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(30
//                       ),
//                     ),
//                     filled: true,
//                     hintStyle:  const TextStyle(color: Colors.grey),
//                     hintText: "Full Name",
//                     fillColor: Colors.white70),
//               ),
//             ),
//
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 40),
//               child: TextField(
//                 decoration:  InputDecoration(
//                     prefixIcon: const Icon(Icons.verified_user),
//                     border:   OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(30
//                       ),
//                     ),
//                     filled: true,
//                     hintStyle:  const TextStyle(color: Colors.grey),
//                     hintText: "User Name",
//                     fillColor: Colors.white70),
//               ),
//             ),
//
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 40),
//               child: TextField(
//                 controller: emailController,
//                 decoration:  InputDecoration(
//                     prefixIcon: const Icon(Icons.alternate_email_sharp),
//                     border:   OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(30
//                       ),
//                     ),
//                     filled: true,
//                     hintStyle:  const TextStyle(color: Colors.grey),
//                     hintText: "Email / Phone Number",
//                     fillColor: Colors.white70),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 40),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration:  InputDecoration(
//                     suffixIcon: const Icon(Icons.visibility_off,color: Colors.grey),
//                     prefixIcon: const Icon(Icons.lock),
//                     border:   OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(30
//                       ),
//                     ),
//                     filled: true,
//                     hintStyle: const TextStyle(color: Colors.grey),
//                     hintText: "Enter Your Password",
//                     fillColor: Colors.white70),
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 40),
//               child: TextField(
//                 controller: passwordController,
//                 obscureText: true,
//                 decoration:  InputDecoration(
//                     suffixIcon: const Icon(Icons.visibility_off,color: Colors.grey),
//                     prefixIcon: const Icon(Icons.lock),
//                     border:   OutlineInputBorder(
//                       borderRadius:  BorderRadius.circular(30
//                       ),
//                     ),
//                     filled: true,
//                     hintStyle: const TextStyle(color: Colors.grey),
//                     hintText: "Re-enter Your Password",
//                     fillColor: Colors.white70),
//               ),
//             ),
//
//             const SizedBox(
//               height: 5,
//             ),
//
//             GestureDetector(
//               onTap: (){
//               },
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 40.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.blue[200],
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   height: 50,
//                   width: 350,
//                   child: const  Center(child: Text('SIGN UP',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
//                 ),
//               ),
//             ),
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children:  [
//                 const Text("Already have an Account ?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
//                 TextButton(onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Login()));
//                 }, child: const Text('Login',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),))
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
