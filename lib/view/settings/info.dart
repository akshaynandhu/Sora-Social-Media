import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Account Information',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:   [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
               radius: 60,
               backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
            ),
                const Text('Akshay Nandhu',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                const Text('@akshay_nandhu',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),

            const SizedBox(
              height: 40,
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
                    hintText: "Enter Your First Name",
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
                    hintText: "Enter Your Last Name",
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
                    hintText: "Enter Your Email",
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
                    hintText: "Enter Your Phone NUmber",
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
                    hintText: "Enter Your Country",
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
                    hintText: "Enter Address 1",
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
                    hintText: "Enter Your Address 2 ",
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
                    hintText: "Enter Your City",
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
                    hintText: "Enter Your Post Code",
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
