import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:socialmedia/view/home/createpost.dart';
import 'package:socialmedia/view/home/home.dart';
import 'package:socialmedia/view/home/notification.dart';
import 'package:socialmedia/view/profile/profile.dart';
import 'package:socialmedia/view/home/search.dart';
import 'package:socialmedia/constants/widgets.dart';

class Bottom extends StatefulWidget {
   const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index =0;

  final screens = const [
    Home(),
    Notifications(),
    Search(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>  [
      const Icon(Icons.home_outlined,size: 30,),
      const Icon(Icons.notifications_none,size: 30,),
      const Icon(Icons.search,size: 30,),
       const CircleAvatar(
         backgroundImage: AssetImage('assets/images/profile.jpg'),
       )
    ];
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        items: items,
        index: index,
        onTap: (index)=> setState(() => this.index = index),
      ),
      floatingActionButton: GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const CreatePost())),
          child: floatingButton()),
    );
  }
}
