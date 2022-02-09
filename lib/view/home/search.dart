import 'package:flutter/material.dart';

import '../../constants/bottombar.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
        }, icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Search here",
                  fillColor: Colors.white70),
            ),
          ),
        ],
      ),
    );
  }
}
