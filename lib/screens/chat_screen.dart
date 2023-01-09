import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:whatsappclone/screens/chating.dart';
import 'package:whatsappclone/utils/app_layout.dart';
import 'package:whatsappclone/utils/app_layout_list.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChatingScreen();
                    },
                  ),
                );
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: SizedBox(
                        height: 60,
                        width: 60,
                        child: FancyShimmerImage(
                            imageUrl:
                                "https://pps.whatsapp.net/v/t61.24694-24/211474797_1765928907110905_8256983499738182202_n.jpg?ccb=11-4&oh=01_AdRU6WfgTPnQAAs7qr5A3VU23rnUBvJr60j7mDpFpY_4RA&oe=63B52053"),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.53,
                              child: Text(
                                "My First Love",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Gap(5),
                            Container(
                              child: Text(
                                "Ayo lah pergi kita besok ",
                                overflow: TextOverflow.ellipsis,
                              ),
                              width: MediaQuery.of(context).size.width * .44,
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(FluentSystemIcons
                                    .ic_fluent_checkmark_regular),
                                Container(
                                  child: Text("12:27 AM"),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 16, 0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.blue,
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Center(
                                        child: Text(
                                      "0",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: FancyShimmerImage(
                        imageUrl:
                            "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.53,
                            child: Text(
                              "Mirelda Shtg",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Gap(5),
                          Container(
                            child: Text(
                              "Dah Siap Belajar?",
                              overflow: TextOverflow.ellipsis,
                            ),
                            width: MediaQuery.of(context).size.width * .44,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Icon(FluentSystemIcons
                                  .ic_fluent_checkmark_regular),
                              Container(
                                child: Text("12:57 AM"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 16, 0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Center(
                                      child: Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: FancyShimmerImage(
                            imageUrl:
                                "https://pps.whatsapp.net/v/t61.24694-24/312012118_1119334405440586_2706533836414249704_n.jpg?ccb=11-4&oh=01_AdQOo2ft9qkSxpmQPDPSq8IaUvWbq2xjUDNJBlYomqHJbQ&oe=63B50BF9")),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.53,
                            child: Text(
                              "Frans Rumapea",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Gap(5),
                          Container(
                            child: Text(
                              "Lae",
                              overflow: TextOverflow.ellipsis,
                            ),
                            width: MediaQuery.of(context).size.width * .44,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              Icon(FluentSystemIcons
                                  .ic_fluent_checkmark_regular),
                              Container(
                                child: Text("12:40 AM"),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 16, 0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Stack(
                              children: <Widget>[
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Center(
                                      child: Text(
                                    "0",
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
