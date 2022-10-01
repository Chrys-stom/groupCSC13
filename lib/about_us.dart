import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 7, 19, 8),
        title: const Text("WEED MASTER"),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Logout",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image(
                height: MediaQuery.of(context).size.height / 3,
                image: const AssetImage("assets/weed.jpeg"),
              ),
              const Positioned(
                  child: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/must.jpg"),
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            title: Text("Eng.Musasi Stom"),
            subtitle: Text("Native Android & flutter Developer"),
          ),
        ],
      ),
    );
  }
}
