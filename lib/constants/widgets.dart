
import 'package:dashed_circle/dashed_circle.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:socialmedia/Model/profile_model.dart';
import 'package:socialmedia/controller/profile_controller.dart';
import 'dart:math'as math;

import 'package:socialmedia/view/profile/allpost.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/widgets/story_view.dart';
import 'package:google_sign_in/google_sign_in.dart';

Widget floatingButton(){
  return Transform.rotate(
    angle: -math.pi / 4,
    child: Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            offset: Offset(0, 1),
          ),
        ],
        color: Colors.black,
        borderRadius: BorderRadius.circular(23)
      ),
      child: Transform.rotate(
        angle: -math.pi / 4,
        child: const Icon(Icons.add,
        color: Colors.white,
          size: 26,
        ),
      ),

    ),
  );
}

Widget GetTabBar(){
  return DefaultTabController(
    length: 3,
    child: Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white.withOpacity(0.1),
        backgroundColor: Colors.white.withOpacity(0.1),
        automaticallyImplyLeading: false,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
             TabBar(
               indicatorColor: Colors.black,
               labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(text: 'POSTS',),
                Tab(text: 'FOLLOWERS',),
                Tab(text: 'FOLLOWING',),
              ],
            ),
          ],
        ),
      ),
      body:   TabBarView(
        children: [
          Allpost(),
          getFollowers(),
          getFollowing(),
        ],
      ),
    ),
  );
}

///    Profile all posts    ///

class getPosts extends StatelessWidget {
   getPosts({Key? key}) : super(key: key);

   MyProfileController profileController = Get.put(MyProfileController());

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MyProfileController>(
        builder: (controller) => FutureBuilder(
          future: profileController.getUserData(),
          builder: (BuildContext context,
              AsyncSnapshot<MyProfileModel> snapshot) {
            if (snapshot.hasData) {
        return ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: snapshot.data!.posts!.length,
            itemBuilder: (BuildContext context, int index){
              return Container(
                  margin: const EdgeInsets.all(10),
                  width: 80,
                  height: 500,
                  decoration:  BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(children:  [
                    Positioned(
                        width: 391,
                        height: 500,
                        child:ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(image: NetworkImage(
                                snapshot
                                    .data!
                                    .posts![index]
                                    .files![0]),fit: BoxFit.cover,))
                    ),
                    Positioned(
                        top: 30,
                        bottom: 30,
                        right: 0,
                        child: Container(
                          width: 80,
                          decoration:    BoxDecoration(
                            color: Colors.white.withOpacity(.50),
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft:  Radius.circular(50)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [

                              CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.grey,),
                                backgroundColor: Colors.white,
                              ),

                              CircleAvatar(
                                child: IconButton(onPressed: (){
                                  showModalBottomSheet(context: context, builder: (BuildContext context){
                                    return Container(
                                        height: 400,
                                        color: Colors.transparent,
                                        child: Comment()
                                    );
                                  });
                                }, icon: Icon(Icons.more_horiz),color: Colors.grey,),
                                backgroundColor: Colors.white,
                              ),

                              CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.bookmark),color: Colors.grey,),
                                backgroundColor: Colors.white,
                              ),

                              CircleAvatar(
                                child: IconButton(onPressed: (){}, icon: Icon(Icons.send),color: Colors.grey,),
                                backgroundColor: Colors.white,
                              ),

                            ],
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 70,
                        left: 10,
                        child: Row(
                          children:  [
                            const CircleAvatar(
                              backgroundImage: AssetImage('assets/images/cover.jpg'),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              '${profileController.profileModel.user![0].name}',
                              style: GoogleFonts.k2d(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            )                          ],
                        )
                    ),

                    const Positioned(
                        bottom: 10,
                        left: 30,
                        child: SizedBox(
                            height: 50,
                            width: 270,
                            child: Text('“Music is the language of the spirit. It opens the secret of life bringing peace, abolishing strife.”',style: TextStyle(color: Colors.white),)))
                  ]
                  )
              );
            });
            } else {
            return const Center(
            child: CircularProgressIndicator(),
            );
            }
          },
      ),
    );
  }
}
//------------------------------------//

/// Home feed ///

Widget getPost(){
  return  ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index){
        return Container(
            margin: const EdgeInsets.all(10),
            width: 80,
            height: 500,
            decoration:  BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(children:  [
              Positioned(
                  width: 391,
                  height: 500,
                  child:ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage('assets/images/profile.jpg'),fit: BoxFit.cover,))
              ),
              Positioned(
                  top: 30,
                  bottom: 30,
                  right: 0,
                  child: Container(
                    width: 80,
                    decoration:    BoxDecoration(
                      color: Colors.white.withOpacity(.50),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomLeft:  Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        CircleAvatar(
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite),color: Colors.grey,),
                          backgroundColor: Colors.white,
                        ),

                        CircleAvatar(
                          child: IconButton(onPressed: (){
                            showModalBottomSheet(context: context, builder: (BuildContext context){
                              return Container(
                               height: 400,
                               color: Colors.transparent,
                               child: Comment()
                              );
                            });
                          }, icon: Icon(Icons.more_horiz),color: Colors.grey,),
                          backgroundColor: Colors.white,
                        ),

                        CircleAvatar(
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.bookmark),color: Colors.grey,),
                          backgroundColor: Colors.white,
                        ),

                        CircleAvatar(
                          child: IconButton(onPressed: (){}, icon: Icon(Icons.send),color: Colors.grey,),
                          backgroundColor: Colors.white,
                        ),

                      ],
                    ),
                  )
              ),
              Positioned(
                  bottom: 70,
                  left: 10,
                  child: Row(
                    children: const [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/images/cover.jpg'),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Akshay Nandhu',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                    ],
                  )
              ),

              const Positioned(
                  bottom: 10,
                  left: 30,
                  child: SizedBox(
                      height: 50,
                      width: 270,
                      child: Text('“Music is the language of the spirit. It opens the secret of life bringing peace, abolishing strife.”',style: TextStyle(color: Colors.white),)))
            ]
            )
        );
      });
}


//------------------------------------//

/// Story ///

Widget getStory(){
  return Padding(
    padding: const EdgeInsets.only(left: 10.0),
    child: SizedBox(
        height: 80,
        child:
        ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index){
              return  GestureDetector(
                onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>GetStoryView())),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: DashedCircle(
                    color: Colors.orange,
                    dashes: 10,
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/cover.jpg'),
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index){
              return  const SizedBox(
                width: 10,
              );
            },
            itemCount: 10
        )

    ),
  );
}

Widget getFollowers(){
  return ListView(
    children:  [
      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
            onPressed: (){}, child: const Text('Remove',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Remove',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Remove',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Remove',style: TextStyle(color:Colors.black),)
        ),
      ),
    ],
  );
}

Widget getFollowing(){
  return ListView(
    children:  [
      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Following',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing:TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Following',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Following',style: TextStyle(color:Colors.black),)
        ),
      ),

      ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/user.png'),
        ),
        title: const Text('_shabith'),
        subtitle: const Text('Shabith Hussain'),

        trailing: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            onPressed: (){}, child: const Text('Following',style: TextStyle(color:Colors.black),)
        ),
      ),
    ],
  );
}


class GetStoryView extends StatelessWidget {
  const GetStoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    return StoryView(

      onComplete: ()=>Navigator.pop(context),
      storyItems: [
        StoryItem.text(title: 'Hello Nandhu', backgroundColor: Colors.red),
        StoryItem.pageImage(url: 'https://images.pexels.com/photos/586744/pexels-photo-586744.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500', controller: controller)
      ],
      controller: controller,
      inline: false,
      repeat: false,
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius:  BorderRadius.only(
                topLeft:  Radius.circular(30.0),
                topRight:  Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15),
          child: Scaffold(
            appBar: AppBar(
              shadowColor: Colors.white.withOpacity(0.1),
              backgroundColor: Colors.white.withOpacity(0.1),
              automaticallyImplyLeading: false,
              title: const Text('Comments',style: TextStyle(color:Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
              actions: [
                IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.more_horiz),color: Colors.black,)
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ListView(
                children: [

                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children:  [
                  //     const Text('Comments',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  //     IconButton(onPressed: ()=>Navigator.pop(context), icon: const Icon(Icons.more_horiz))
                  //   ],
                  // ),

                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        const Text("I see you have something to talk about.Well I have something to shout about,infact something to sing about.But I'll just keep quiet and let you carry on.",
                          // style: TextStyle(fontSize: ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10)
                              ),
                              width: 80,
                              height: 30,
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Icon(Icons.reply_outlined,color: Colors.green[200],),
                                    Text('Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),

                            const Text('25 mins ago'),
                          ],
                        ),

                      ],
                    ),

                  ),

                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        const Text("I see you have something to talk about.Well I have something to shout about,infact something to sing about.But I'll just keep quiet and let you carry on.",
                          // style: TextStyle(fontSize: ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              width: 80,
                              height: 30,
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Icon(Icons.reply_outlined,color: Colors.green[200],),
                                    Text('Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),

                            const Text('25 mins ago'),
                          ],
                        ),

                      ],
                    ),

                  ),

                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        const Text("I see you have something to talk about.Well I have something to shout about,infact something to sing about.But I'll just keep quiet and let you carry on.",
                          // style: TextStyle(fontSize: ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              width: 80,
                              height: 30,
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Icon(Icons.reply_outlined,color: Colors.green[200],),
                                    Text('Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),

                            const Text('25 mins ago'),
                          ],
                        ),

                      ],
                    ),

                  ),

                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        const Text("I see you have something to talk about.Well I have something to shout about,infact something to sing about.But I'll just keep quiet and let you carry on.",
                          // style: TextStyle(fontSize: ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              width: 80,
                              height: 30,
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Icon(Icons.reply_outlined,color: Colors.green[200],),
                                    Text('Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),

                            const Text('25 mins ago'),
                          ],
                        ),

                      ],
                    ),

                  ),

                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/user.png'),
                    ),
                    title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
                    subtitle: Column(
                      children: [
                        const Text("I see you have something to talk about.Well I have something to shout about,infact something to sing about.But I'll just keep quiet and let you carry on.",
                          // style: TextStyle(fontSize: ),
                        ),

                        const SizedBox(
                          height: 5,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              width: 80,
                              height: 30,
                              child:  Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:  [
                                    Icon(Icons.reply_outlined,color: Colors.green[200],),
                                    Text('Reply',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  ],
                                ),
                              ),
                            ),

                            const Text('25 mins ago'),
                          ],
                        ),

                      ],
                    ),

                  ),

                ],
              ),
            ),
          ),
        ),
      );

  }
}



class GoogleSignInApi{
  static final _googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() => _googleSignIn.signIn();

 static Future <GoogleSignInAccount?> logout() => _googleSignIn.disconnect();
}

class Posts extends StatelessWidget {
   Posts({Key? key}) : super(key: key);

  MyProfileController profileController = Get.put(MyProfileController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<MyProfileController>(
        builder: (controller) => FutureBuilder(
          future: profileController.getUserData(),
          builder: (BuildContext context,
              AsyncSnapshot<MyProfileModel> snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.posts!.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      color: const Color(0xffF5F5F5),
                      padding: EdgeInsets.all(8.sp),
                      child: Container(
                        padding: EdgeInsets.all(7.sp),
                        height: 64.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.9),
                                spreadRadius: 10,
                                blurRadius: 3,
                                offset: const Offset(0, 7))
                          ],
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 2.w,
                              child: IconButton(
                                onPressed: () {
                                  Get.bottomSheet(Container(
                                    height: 150,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.only(
                                            topRight:
                                            Radius.circular(
                                                12),
                                            topLeft:
                                            Radius.circular(
                                                12))),
                                    child: Column(
                                      children: [
                                        Material(
                                          child: ListTile(
                                            title: Center(
                                                child: Text(
                                                  "Delete",
                                                  style:
                                                  GoogleFonts.raleway(
                                                      color:
                                                      Colors.red,
                                                      fontWeight:
                                                      FontWeight
                                                          .bold),
                                                )),
                                            onTap: () {
                                              profileController
                                                  .deletePost(
                                                  profileController
                                                      .profileModel
                                                      .posts![
                                                  index]
                                                      .sId!);
                                              controller
                                                  .update();
                                              Get.back();
                                            },
                                          ),
                                          shadowColor: Colors.grey,
                                        ),
                                        const Divider(
                                          color: Colors.grey,
                                        ),
                                        Material(
                                          child: ListTile(
                                            title: Center(
                                                child: Text(
                                                  "Edit",
                                                  style:
                                                  GoogleFonts.raleway(
                                                      color: Colors
                                                          .black,
                                                      fontWeight:
                                                      FontWeight
                                                          .bold),
                                                )),
                                          ),
                                          shadowColor: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ));
                                },
                                icon: FaIcon(
                                  FontAwesomeIcons.ellipsisV,
                                  color: Colors.black,
                                  size: 12.sp,
                                ),
                              ),
                            ),
                            Positioned(
                                child: Row(
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 10.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                        BorderRadius.circular(100.sp),
                                        image: const DecorationImage(
                                            image: AssetImage(
                                                'assets/images/profile.jpg'),
                                        fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Text(
                                      '${profileController.profileModel.user![0].name}',
                                      style: GoogleFonts.k2d(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    )
                                  ],
                                )),
                            Positioned(
                                top: 37.sp,
                                left: 1.3.w,
                                child: snapshot.data!.posts![index]
                                    .files!.isNotEmpty
                                    ? Container(
                                  height: 44.h,
                                  width: 87.w,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              snapshot
                                                  .data!
                                                  .posts![index]
                                                  .files![0]),
                                          fit: BoxFit.fitWidth),
                                      borderRadius:
                                      BorderRadius.circular(
                                          10)),
                                )
                                    : SizedBox(
                                  height: 44.h,
                                  width: 87.w,
                                  child: Center(
                                    child: Text(
                                        "${snapshot.data!.posts![index].desc}"),
                                  ),
                                )),
                            Positioned(
                                top: 50.h,
                                left: 0.w,
                                child: Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {},
                                        splashColor: Colors.grey,
                                        icon: Image.asset(
                                          'Assets/heart.png',
                                          fit: BoxFit.contain,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        splashColor: Colors.grey,
                                        icon: Image.asset(
                                          'Assets/comment.png',
                                          fit: BoxFit.contain,
                                        )),
                                  ],
                                )),
                            Positioned(
                                top: 50.h,
                                left: 77.w,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const FaIcon(
                                    FontAwesomeIcons.bookmark,
                                    color: Colors.black54,
                                  ),
                                )),
                            Positioned(
                                top: 56.h,
                                left: 2.w,
                                child: Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: [
                                    snapshot.data!.posts![index]
                                        .likes!.isNotEmpty
                                        ? Text(
                                      '${snapshot.data!.posts![index].likes!.length}',
                                      style: GoogleFonts.k2d(
                                          fontWeight:
                                          FontWeight.bold),
                                    )
                                        : const Text(""),
                                    SizedBox(
                                      height: 0.5.h,
                                    ),
                                    snapshot.data!.posts![index]
                                        .comments!.isNotEmpty
                                        ? Text(
                                      'View all ${snapshot.data!.posts![index].comments!.length} comments',
                                      style: GoogleFonts.k2d(
                                          color: Colors.grey),
                                    )
                                        : const Text('')
                                  ],
                                ))
                          ],
                        ),
                      ),
                    ),
                  );
                },
                // itemCount: profileController.profileModel.posts![0].files!.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 2.h,
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),

    );
  }
}
