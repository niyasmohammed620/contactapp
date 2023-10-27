import 'dart:math';

import 'package:contactapp/create_contact_page.dart';
import 'package:flutter/material.dart';
import 'user_page.dart';
import 'user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<User> userList = [
  //   User(phnNo: "4364", name: "sdfs", color:   Colors.red,),
  //
  // ];
  final List<String> names = <String>[
    "Bailey",
    "Aaron",
    "Bella",
    "Brandon",
    "Abby",
    "Blake",
    "Addison",
    "Brian",
    "Alexa",
    "Brooke",
    "Anthony",
    "dominic",
    "catherin"
  ];

  sortNames() {
    names.sort();
  }

  final List<Color> colorsList = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.yellow,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
    Colors.teal,
  ];

  Color getRandomColor() {
    Random random = new Random();
    int randomNumber = random.nextInt(colorsList.length);
    return colorsList[randomNumber];
  }

  @override
  void initState() {
    sortNames();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1B1A1E),
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 45, left: 20, right: 20),
          decoration: BoxDecoration(
              color: Color(0xFF2C2C36),
              border: Border.all(width: 1),
              borderRadius: BorderRadius.circular(25)),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.1,
          child: TextField(
            decoration: InputDecoration(
                prefixStyle: TextStyle(color: Colors.white),
                prefixText: 'Search contacts & plac...',
                border: InputBorder.none,
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                suffixIcon: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.mic,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.list_outlined,
                          color: Colors.white,
                        )),
                  ],
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Color(0xFF1B1A1E)),
          padding: EdgeInsets.only(top: 10),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(bottom: 15),
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: names.length + 1,
                  itemBuilder: (context, int index) {
                    String check = 'b';
                    if (index > 1) {
                      check = names[index - 2][0];
                    }
                    return (index == 0) && (check == 'b')
                        ? Container(
                            padding: EdgeInsets.only(left: 50),
                            height: MediaQuery.of(context).size.height / 13,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xFF1B1A1E))),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CreateContactPage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(Icons.add_outlined,
                                      color: Color(0xFFB9C3FF)),
                                  SizedBox(width: 20),
                                  Text(
                                    'Create new contact',
                                    style: TextStyle(color: Color(0xFFB9C3FF)),
                                  )
                                ],
                              ),
                            ),
                          )
                        : (index != 0) && (names[index - 1][0] != check)
                            ? Container(
                                height: MediaQuery.of(context).size.height / 13,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF1B1A1E))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UserPage(
                                            name: names[index - 1],
                                            char: names[index - 1][0],
                                            color1: colorsList[index]),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        child: Text(
                                          names[index - 1][0].toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        backgroundColor: Color(0xFF1B1A1E),
                                        radius: 15,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        child: Text(
                                          names[index - 1][0].toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        backgroundColor: colorsList[index],
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        names[index - 1].toUpperCase(),
                                        // userList[index].name,
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            : Container(
                                height: MediaQuery.of(context).size.height / 13,
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Color(0xFF1B1A1E))),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => UserPage(
                                            name: names[index - 1],
                                            char: names[index - 1][0],
                                            color1: colorsList[index]),
                                      ),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: 50,
                                      ),
                                      CircleAvatar(
                                        child: Text(
                                          names[index - 1][0].toUpperCase(),
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white),
                                        ),
                                        backgroundColor: colorsList[index],
                                        radius: 20,
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        names[index - 1].toUpperCase(),
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: FloatingActionButton(
          onPressed: () {},
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          backgroundColor: Color(0xFFB9C3FF),
          child: Icon(
            Icons.dialpad,
            color: Colors.black,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.1,
        child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            backgroundColor: Color(0xFF2C2C36),
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border,
                  color: Colors.white,
                  size: 25,
                ),
                label: "Favorites",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.lock_clock, color: Colors.white, size: 25),
                  label: "Recents"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people, color: Colors.white, size: 25),
                  label: "Contacts"),
            ]),
      ),
    );
  }
}
