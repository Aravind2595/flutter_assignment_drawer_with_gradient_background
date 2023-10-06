import 'package:flutter/material.dart';
import 'package:flutter_assignment_drawer_with_gradient_background/homePage.dart';

void main() {
  runApp(MaterialApp(
    home: DrawerPageView(),
  ));
}

class DrawerPageView extends StatefulWidget {
  @override
  State<DrawerPageView> createState() => _DrawerPageViewState();
}

class _DrawerPageViewState extends State<DrawerPageView> {
  var drawerListIcon = [
    Icons.dashboard,
    Icons.leak_add_sharp,
    Icons.people_alt_outlined,
    Icons.rocket_launch_outlined,
    Icons.account_box,
    Icons.subscriptions_outlined,
    Icons.payments_rounded,
    Icons.account_circle_outlined,
    Icons.library_add_outlined,
  ];
  var drawerListText = [
    "Dashboard",
    "Leads",
    "Clients",
    "Projects",
    "Patients",
    "Subscription",
    "Payments",
    "Users",
    "Library"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("AppBar"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      drawer: Container(
        width: 300,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xffffb56b),
              Color(0xfff39060),
              Color(0xffe16b5c),
              Color(0xffca485c),
            ])),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/sundar_pichai.jpg"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sundar Pichai",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                          Text("CEO of Alphabet Inc",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Icon(
                          drawerListIcon[index],
                          color: Colors.white,
                        ),
                        title: Text(
                          drawerListText[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          if (drawerListText[index] == 'Dashboard') {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const HomePageView()));
                          }
                        },
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
