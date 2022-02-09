import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'dart:io';

import 'package:socialmedia/constants/instances.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'Create Post',
              style: GoogleFonts.k2d(fontSize: 12.sp),
            ),
            centerTitle: true,
            backgroundColor: Colors.purple,
            elevation: 0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Get.back();
              },
            ),
            // actions: [
            //   TextButton(
            //     onPressed: () async {
            //       await postController.postImage(postController.image);
            //     },
            //     child: Text(
            //       'Done',
            //       style: GoogleFonts.k2d(color: Colors.white),
            //     ),
            //   ),
            // ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100.h,
                      width: 100.w,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                const CircleAvatar(
                                  backgroundImage: AssetImage("assets/images/profile.jpg"),
                                  backgroundColor: Colors.transparent,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(
                                  "Akshay Nandhu",
                                  style:
                                  GoogleFonts.k2d(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          TextField(
                            controller: postController.descriptionController,
                            decoration: InputDecoration(
                              hintText: "Text here....",
                              hintStyle: GoogleFonts.k2d(),
                              enabled: true,
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: ElevatedButton(
                                onPressed: () async {
                              await postController.postImage(postController.image);
                              Navigator.pop(context);
                            }, child: Text('POST NOW')),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: 100.w,
                              height: 70.h,
                              color: Colors.black,
                            child: Center(
                              child: IconButton(onPressed: () async {
                                await postController.getImage();
                                postController.update();
                              }, icon: const Icon(
                            CupertinoIcons.photo_fill_on_rectangle_fill,color: Colors.white,
                          )),
                            ),
                              )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: Colors.black87,
          //   onPressed: () async {
          //     await postController.getImage();
          //     postController.update();
          //   },
          //   child: const Icon(
          //     CupertinoIcons.photo_fill_on_rectangle_fill,
          //   ),
          // ),
        ));
  }
}
