import 'package:flutter/material.dart';
import 'package:socialmedia/constants/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 370,
                child: Stack(
                  children: [
                    const ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomRight: Radius.circular(50)),
                        child: Image(
                          image: AssetImage('assets/images/cover.jpg'),
                          fit: BoxFit.cover,
                          height: 300,
                        )),
                    Positioned(
                        top: 20,
                        right: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.amber,
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit_outlined,
                                color: Colors.white,
                              )),
                        )),
                    Positioned(
                        top: 250,
                        left: 20,
                        child: Container(
                          width: 100,
                          height: 120,
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
                        )
                    ),
                    const Positioned(
                        top: 310,
                        left: 130,
                        child: Text(
                          'Akshay Nandhu',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        )),
                    const Positioned(
                        top: 340,
                        left: 130,
                        child: Text(
                          '@akshay_nandhu',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.home,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Lives ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: 'in'),
                        TextSpan(
                            text: ' Malappuram',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'From ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(
                            text: ' Malappuram',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.school,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Went ',
                      style: DefaultTextStyle.of(context).style,
                      children: const <TextSpan>[
                        TextSpan(text: 'To'),
                        TextSpan(
                            text: ' Devagiri College',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                ],
              ),

          SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: GetTabBar()
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
