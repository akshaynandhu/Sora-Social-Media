import 'package:flutter/material.dart';

class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Password',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children:  [
           const Image(image: AssetImage('assets/images/pass.jpg')),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Current Password",
                  fillColor: Colors.white70),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "New Password",
                  fillColor: Colors.white70),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            child: TextField(
              decoration:  InputDecoration(
                  suffixIcon: const Icon(Icons.remove_red_eye,color: Colors.grey),
                  prefixIcon: const Icon(Icons.lock),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.grey),
                  hintText: "Confirm Password",
                  fillColor: Colors.white70),
            ),
          ),

          GestureDetector(
            onTap: (){
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
              child: Container(
                height: 50,
                width: 200,
                child: const  Center(child: Text('SAVE',style: TextStyle(color:Colors.white, fontSize: 15,fontWeight: FontWeight.bold),)),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
