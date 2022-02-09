import 'package:flutter/material.dart';
class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        // leading: IconButton(onPressed: (){
        //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
        // }, icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.purple,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
             SizedBox(width: 5,),
             Text('Shabith Hussain',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
          ],
        ),
      ),
      body: Container(
        child: Stack(
          children:  [
             const Positioned(
                top: 50,
                left: 10,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.png'),
                )
            ),

            Positioned(
                top: 30,
                left: 55,
                child: Container(
                  height: 50,
                  width: 180,
                  decoration:    BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius:  BorderRadius.circular(20),
                  ),
                  child: const  Center(
                    child: Text('Hi mahn...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                )
            ),

            Positioned(
                top: 100,
                right: 10,
                child: Container(
                  height: 50,
                  width: 180,
                  decoration:    BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius:  BorderRadius.circular(20),
                  ),
                  child: const  Center(
                    child: Text('Yeah Tell me Bro...',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                  ),
                )
            ),

            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: TextField(
              decoration:  InputDecoration(
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.photo,color: Colors.black,),
                    SizedBox(width: 10,),
                    Icon(Icons.send,color: Colors.black,),
                    SizedBox(width: 10,),
                  ],
                ),
                  prefixIcon: const Icon(Icons.mic,color: Colors.black,),
                  border:   OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  hintStyle:  const TextStyle(color: Colors.blue),
                  hintText: 'Message...',
                  fillColor: Colors.grey.withOpacity(0.2)),
            ),
            ),

        ],
    ),
      )
    );
  }
}
