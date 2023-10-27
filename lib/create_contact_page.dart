import 'package:flutter/material.dart';

class CreateContactPage extends StatefulWidget {
  const CreateContactPage({super.key});

  @override
  State<CreateContactPage> createState() => _CreateContactPageState();
}

class _CreateContactPageState extends State<CreateContactPage> {
  bool check = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          flexibleSpace: Container(
        padding: EdgeInsets.only(top: 45, bottom: 10, left: 5),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 60,
          ),
          Text(
            "Create contact",
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 15,
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Save", style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFB9C3FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ]),
      )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 14,
              color: Color(0xFF464650),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Save to",
                    style: TextStyle(
                        color: Color(0xFFDFE1F8),
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 60,
              backgroundColor: Color(0xFF414659),
              child: Container(
                padding: EdgeInsets.only(right: 30, bottom: 25),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.image,
                    color: Colors.white,
                    size: 60,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Add picture",
              style: TextStyle(color: Color(0xFFB9C3FF)),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First name',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        check = !check;
                      });
                    },
                    icon: Icon(
                      check
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            check
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        height: 60,
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            border:
                                Border.all(width: 1, color: Color(0xFFB4B4BE))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 5,
                          ),
                          child: TextField(
                            cursorColor: Color(0xFFB9C3FF),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Last name',
                              hintStyle: TextStyle(
                                color: Color(0xFFB4B4BE),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 45),
                            height: 60,
                            width: 240,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: TextField(
                                cursorColor: Color(0xFFB9C3FF),
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.white,
                                  )),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: Color(0xFFB4B4BE),
                                    width: 1,
                                  )),
                                  border: InputBorder.none,
                                  hintText: 'Middle name',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFB4B4BE),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45),
                            height: 60,
                            width: 240,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFB4B4BE),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: TextField(
                                cursorColor: Color(0xFFB9C3FF),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Last name',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFB4B4BE),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 45),
                            height: 60,
                            width: 240,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 1, color: Color(0xFFB4B4BE))),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                top: 5,
                              ),
                              child: TextField(
                                cursorColor: Color(0xFFB9C3FF),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Name suffix',
                                  hintStyle: TextStyle(
                                    color: Color(0xFFB4B4BE),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Company',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Phone',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mobile',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.mail,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Gmail',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Home',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 60,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Significant date',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  Container(
                    height: 60,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        border: Border.all(width: 1, color: Color(0xFFB4B4BE))),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        top: 5,
                      ),
                      child: TextField(
                        cursorColor: Color(0xFFB9C3FF),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Birthday',
                          hintStyle: TextStyle(
                            color: Color(0xFFB4B4BE),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 45),
                  child: Text(
                    "More fields",
                    style: TextStyle(color: Color(0xFFB9C3FF)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
