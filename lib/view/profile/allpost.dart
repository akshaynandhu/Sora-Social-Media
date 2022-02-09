import 'package:flutter/material.dart';
import 'package:socialmedia/constants/widgets.dart';

class Allpost extends StatelessWidget {
  const Allpost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            shadowColor: Colors.white.withOpacity(0.1),
            backgroundColor: Colors.white.withOpacity(0.1),
            automaticallyImplyLeading: false,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                TabBar(
                  indicatorColor: Colors.black,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(icon: Icon(Icons.photo)),
                    Tab(icon: Icon(Icons.bookmark)),
                    Tab(icon: Icon(Icons.person_pin_sharp),),
                  ],
                ),
              ],
            ),
          ),
          body:   TabBarView(
            children: [
              getPosts(),
              const Center(child: Text('No Posts')),
              const Center(child: Text('No Posts')),

              // getPost(),
              // getPost(),
            ],
          ),
    )
    );
  }
}
