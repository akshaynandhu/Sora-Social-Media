import 'package:flutter/material.dart';
import 'package:socialmedia/constants/bottombar.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const Bottom()));
        }, icon: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text('Notifications',style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children:   [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text("Satisfy your curiosity — or start a new career. TODAY: we're announcing a special offer with courses as low as Rs.455 ",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image:
                      AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              trailing: const Text('15mins ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
    ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text("Satisfy your curiosity — or start a new career. TODAY: we're announcing a special offer with courses as low as Rs.455 ",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image:
                      AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              trailing: const Text('30mins ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text("Satisfy your curiosity — or start a new career. TODAY: we're announcing a special offer with courses as low as Rs.455 ",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image:
                      AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              trailing: const Text('45mins ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text("Satisfy your curiosity — or start a new career. TODAY: we're announcing a special offer with courses as low as Rs.455 ",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image:
                      AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              trailing: const Text('1h ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text("Satisfy your curiosity — or start a new career. TODAY: we're announcing a special offer with courses as low as Rs.455 ",style: TextStyle(fontSize:10,fontWeight: FontWeight.bold ),),
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: const Image(
                      image:
                      AssetImage('assets/images/profile.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              trailing: const Text('2h ago',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
            ),
          ),
      ],
    )
    );
  }
}

