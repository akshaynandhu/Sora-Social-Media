import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:socialmedia/controller/auth_controller.dart';
import 'package:socialmedia/controller/post_controller.dart';


final PageController pageController = Get.put(PageController());

///Authentication controller
final authenticationController = Get.put(AuthenticationController());

///Post Controller
final postController = Get.put(PostController());

// ///Search user Controller
// final SearchUserController searchUserController = Get.put(SearchUserController());
//
// ///my profile
// int friendIndex = searchUserController.results.length;

