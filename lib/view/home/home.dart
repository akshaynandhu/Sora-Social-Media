import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:socialmedia/constants/instances.dart';
import 'package:socialmedia/constants/widgets.dart';
import 'package:socialmedia/view/settings/info.dart';
import 'package:socialmedia/view/chat/messages.dart';
import 'package:socialmedia/view/home/notification.dart';
import 'package:socialmedia/view/settings/password.dart';
import 'package:socialmedia/view/settings/social.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading:  IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const Messages()));
          }, icon: const Icon(Icons.message,color: Colors.black,)),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Text('dribble',style: TextStyle(fontSize: 20,color: Colors.black),),
          actions:  [
             GestureDetector(
                 onTap: (){
                   showModalBottomSheet(
                       isScrollControlled: true,
                       backgroundColor: Colors.transparent,
                       context: context, builder: (BuildContext context){
                     return  Scaffold(
                         floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
                         floatingActionButton: FloatingActionButton(
                           onPressed: () { Navigator.pop(context); },
                           child: const Icon(Icons.close,color: Colors.black,size: 25,),
                           backgroundColor: Colors.white,

                         ),
                         backgroundColor: Colors.transparent,
                         body: Padding(
                           padding: const EdgeInsets.all(30.0),
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Row(
                                 children:  [

                                   GestureDetector (
                                     child: Container(
                                       height: 150,
                                       width: 150,
                                       child: const Card(
                                         child: Center(child: Text("Account Information",style: TextStyle(fontWeight: FontWeight.bold))),
                                         elevation: 8,
                                         shadowColor: Colors.green,
                                         // margin: EdgeInsets.all(20),
                                       ),
                                     ),
                                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Info())),
                                   ),
                                   GestureDetector(
                                     child: Container(
                                       height: 150,
                                       width: 150,
                                       child: const Card(
                                         child: Center(child: Text("Social Account",style: TextStyle(fontWeight: FontWeight.bold))),
                                         elevation: 8,
                                         shadowColor: Colors.green,
                                         // margin: EdgeInsets.all(20),
                                       ),
                                     ),
                                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Social())),

                                   ),
                                 ],
                               ),
                               Row(
                                 children:  [
                                   GestureDetector(
                                     child: Container(
                                       height: 150,
                                       width: 150,
                                       child: const Card(
                                         child: Center(child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold))),
                                         elevation: 8,
                                         shadowColor: Colors.green,
                                         // margin: EdgeInsets.all(20),
                                       ),
                                     ),
                                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Password())),

                                   ),
                                   GestureDetector(
                                     child: Container(
                                       height: 150,
                                       width: 150,
                                       child: const Card(
                                         child: Center(child: Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold))),
                                         elevation: 8,
                                         shadowColor: Colors.green,
                                         // margin: EdgeInsets.all(20),
                                       ),
                                     ),
                                     onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Notifications())),

                                   ),
                                 ],
                               ),
                               Container(
                                 height: 150,
                                 width: 150,
                                 child: const Card(
                                   child: Center(child: Text("Help",style: TextStyle(fontWeight: FontWeight.bold),)),
                                   elevation: 8,
                                   shadowColor: Colors.green,
                                   // margin: EdgeInsets.all(20),
                                 ),
                               ),

                                // const SizedBox(height: 140,),


                               // Material(
                               //   borderRadius: BorderRadius.circular(10),
                               //   elevation: 1.5.sp,
                               //   child: ListTile(
                               //     leading: const Icon(Icons.power_settings_new,color: Colors.red,),
                               //     title: Text('Log out',
                               //         style: GoogleFonts.k2d(color: Colors.grey[600])),
                               //     trailing: const Icon(Icons.arrow_forward_ios),
                               //     onTap: ()=>authenticationController.logoutUser(),
                               //   ),
                               // ),

                                GestureDetector(
                                  child: const CircleAvatar(
                                     child:   Icon(Icons.power_settings_new,color: Colors.red,size: 40,),
                                   backgroundColor: Colors.black,
                               ),
                                  onTap: (){
                                    authenticationController.logoutUser();
                                  }
                                ),

                             ],
                           ),
                         )
                     );
                   });
                 },
                 child: const Icon(Icons.settings,size: 25,color: Colors.black,)),
            const SizedBox(
              width: 15,
            )
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              getStory(),
              const Divider(thickness: 1,),
              getPost(),
            ],
          ),
        ),
      ),
    );
  }
}
