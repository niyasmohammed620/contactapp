import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  final String char;
  final String name;
  final Color color1;
  const UserPage({super.key, required this.char, required this.name,required this.color1});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1B1A1E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1B1A1E),
        flexibleSpace: Container(
          margin: EdgeInsets.only(top: 45, left: 10, right: 10),
          decoration: BoxDecoration(color: Color(0xFF1B1A1E)),
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width,
          child: Row(children: [
            // CircleAvatar(
            //   backgroundColor: Color(0xFF1B1A1E),
            //   child: Icon(
            //     Icons.arrow_back,
            //     color: Colors.white,
            //   ),
            // ),
            SizedBox(
              width: 180,
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF1B1A1E),
              child: Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF1B1A1E),
              child: Icon(
                Icons.star_border,
                color: Colors.white,
              ),
            ),
            CircleAvatar(
              backgroundColor: Color(0xFF1B1A1E),
              child: Icon(
                Icons.menu_outlined,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xFF1B1A1E)),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
              child: CircleAvatar(
                radius: 90,
                backgroundColor: widget.color1,
                child: Text(widget.char.toUpperCase(),
                    style: TextStyle(color: Colors.white, fontSize: 100)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 25, bottom: 10),
              child: Center(
                  child: Text(widget.name.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 30))),
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xFF1B1A1E)),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1B1A1E)),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xFF2C2C36),
                                child: Icon(
                                  Icons.phone,
                                  color: Color(0xFFDEE2F6),
                                ),
                                radius: 25),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Call",
                                style: TextStyle(color: Color(0xFFDEE2F6)),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1B1A1E)),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xFF2C2C36),
                                child: Icon(
                                  Icons.message_outlined,
                                  color: Color(0xFFDEE2F6),
                                ),
                                radius: 25),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Text",
                                style: TextStyle(color: Color(0xFFDEE2F6)),
                              ),
                            )
                          ],
                        )),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height * 0.13,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF1B1A1E)),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                backgroundColor: Color(0xFF2C2C36),
                                child: Icon(
                                  Icons.video_camera_back_outlined,
                                  color: Color(0xFFDEE2F6),
                                ),
                                radius: 25),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                "Video",
                                style: TextStyle(color: Color(0xFFDEE2F6)),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15)),
                  color: Color(0xFF2C2C36)),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, bottom: 10),
                child: Text(
                  "Contact info",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 20, left: 20),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 11,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                  color: Color(0xFF2C2C36)),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15))),
                    backgroundColor: Color(0xFF2C2C36)),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('198  ',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Mobile',
                              style: TextStyle(fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 107,
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C2C36),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Icon(
                            Icons.video_camera_back_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 30,
                      child: Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF2C2C36),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Icon(
                            Icons.message_outlined,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
