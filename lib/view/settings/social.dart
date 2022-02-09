import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Social Account',style: TextStyle(fontWeight: FontWeight.bold),),
      ),

      body: SingleChildScrollView(
        child: Column(
          children:  [

            const SizedBox(
              height: 10,
            ),

            const Center(
              child: Image(
                image: AssetImage('assets/images/social.png'),width: 300,height: 300,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Facebook",
                    fillColor: Colors.white70),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Twitter",
                    fillColor: Colors.white70),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Linkedin",
                    fillColor: Colors.white70),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Instagram",
                    fillColor: Colors.white70),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Github",
                    fillColor: Colors.white70),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
              child: TextField(
                decoration:  InputDecoration(
                    border:   OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    filled: true,
                    hintStyle:  const TextStyle(color: Colors.grey),
                    hintText: "Google",
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
      ),

    );
  }
}
