import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 7, 19, 8),
          title: const Text("ABOUT US"),
          centerTitle: true,
          /*actions: [
            TextButton(
              onPressed: () {},
              child: const Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],*/
        ),
        body: SingleChildScrollView(
          child: ClipRRect(
            child: Column(children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/weed.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    left: 15.0,
                    bottom: 30.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Welcome to the weed master \n mobile application \n built to let you monitor weed \n growth in your garden",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/must.jpg'),
                  ),
                  Positioned(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Text("Musasi Stom")),
                          subtitle: Align(
                            alignment: Alignment.center,
                            child: Text("musasistom007@gmail.com"),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Student at Makerere University 2019 - 2022 pursuing a bachelor's degree in Computer Science. \nNative Android & flutter Developer",
                          style: TextStyle(
                              color: Colors.black, fontSize: 18, height: 1.4),
                        ),
                      )
                    ],
                  ))
                ],
              )),
              const SizedBox(height: 5),
              const SizedBox(
                height: 20,
              ),
              Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/muwonge.jpg'),
                  ),
                  Positioned(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Text("Muwonge Lawrence")),
                          subtitle: Align(
                            alignment: Alignment.center,
                            child: Text("muwongelawrence44@gmail.com"),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Student at Makerere University 2019 - 2022 pursuing a bachelor's degree in Computer Science. \nNative Android, flutter and UI/UX designer",
                          style: TextStyle(
                              color: Colors.black, fontSize: 18, height: 1.4),
                        ),
                      )
                    ],
                  )),
                ],
              )),
              Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/charles.jpg'),
                  ),
                  Positioned(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Text("Sserumanya Charles Junior")),
                          subtitle: Align(
                            alignment: Alignment.center,
                            child: Text("jrsserumanya@gmail.com"),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Student at Makerere University 2019 - 2022 pursuing a bachelor's degree in Computer Science. \nUI/Ux designer & Data analyst",
                          style: TextStyle(
                              color: Colors.black, fontSize: 18, height: 1.4),
                        ),
                      )
                    ],
                  )),
                ],
              )),
              Card(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/jonas.jpeg'),
                  ),
                  Positioned(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Text("Sadic Jonas")),
                          subtitle: Align(
                            alignment: Alignment.center,
                            child: Text("sadicjonas@gmail.com"),
                          )),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "About",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          "Student at Makerere University 2019 - 2022 pursuing a bachelor's degree in Computer Science. \nUI/Ux designer & Data analyst",
                          style: TextStyle(
                              color: Colors.black, fontSize: 18, height: 1.4),
                        ),
                      )
                    ],
                  )),
                ],
              ))
            ]),
          ),
        ));
  }
}
