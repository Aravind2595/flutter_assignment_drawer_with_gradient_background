import 'package:flutter/material.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
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
      body: Container(
        width: double.infinity,
        child: const Column(
          children: [
            Image(
              image: AssetImage("assets/images/sundar_pichai.jpg"),
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sundar Pichai",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  SizedBox()
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Sundar Pichai, in full Pichai Sundararajan, born June 10, 1972, Madras [now Chennai], Tamil Nadu, India, Indian-born American executive who was CEO of both Google, Inc. (2015– ), and its holding company, Alphabet Inc."
                "As a boy growing up in Madras, Pichai slept with his brother in the living room of the cramped family home, but his father, an electrical engineer at the British multinational GEC, saw that the boys received a good education. "
                "At an early age Pichai displayed an interest in technology and an extraordinary memory, especially for telephone numbers. After earning a degree in metallurgy (B.Tech., 1993) and a silver medal at the Indian Institute of Technology Kharagpur,"
                " he was awarded a scholarship to study at Stanford University (M.S. in engineering and materials science, 1995). He remained in the United States thereafter, working briefly for Applied Materials (a supplier of semiconductor materials) and "
                "then earning an M.B.A. (2002) from the Wharton School of the University of Pennsylvania\n"
                "Following a short stint at the management consulting firm McKinsey & Co., Pichai joined Google in 2004 as the head of product management and development. He initially worked on the Google Toolbar, which enabled those using the Microsoft "
                "Internet Explorer and Mozilla Firefox Web browsers to easily access the Google search engine. Over the next few years, he was directly involved in the development of Google’s own browser, Chrome, which was released to the public in 2008. "
                "That same year Pichai was named vice president of product development, and he began to take a more-active public role. By 2012 he was a senior vice president, and two years later he was made product chief over both Google and the Android "
                "smartphone operating system.",
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            )
          ],
        ),
      ),
    );
  }
}
