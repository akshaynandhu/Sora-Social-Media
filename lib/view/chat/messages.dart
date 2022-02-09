import 'package:flutter/material.dart';
import 'package:socialmedia/view/chat/chat.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Chats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: ListView(
        children:   [
          ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
              title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: const Text('2 new Messages'),
            trailing: const Text('10mins',style: TextStyle(fontWeight: FontWeight.bold),),

          ),

          ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('2 new Messages'),
            trailing: const Text('20mins',style: TextStyle(fontWeight: FontWeight.bold),),

          ),

          ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('2 new Messages'),
            trailing: const Text('30mins',style: TextStyle(fontWeight: FontWeight.bold),),

          ),

          ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('2 new Messages'),
            trailing: const Text('1h',style: TextStyle(fontWeight: FontWeight.bold),),
          ),

          ListTile(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chat())),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/images/user.png'),
            ),
            title: const Text('_shabith',style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: const Text('2 new Messages'),
            trailing: const Text('2h',style: TextStyle(fontWeight: FontWeight.bold),),

          ),

        ],
      ),
    );
  }
}
