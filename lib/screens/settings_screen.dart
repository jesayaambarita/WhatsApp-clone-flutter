import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone/screens/profile.dart';
import 'package:whatsappclone/utils/app_layout.dart';
import 'package:whatsappclone/utils/code_layout.dart';
import 'package:whatsappclone/utils/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, DarkThemeProvider value, child) {
      return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: value.darkTheme
              ? Color.fromARGB(255, 52, 52, 52)
              : Color(0xff075E54),
          title: Text("Settings"),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfileScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, left: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: Image.asset(
                            "images/frans.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Frans Rumapea",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        Gap(5),
                        Text(
                          "Tidak Bisa Bicara, WhatsApp Aja",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CodeQrLayout();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20, right: 13),
                      child: Icon(
                        FluentSystemIcons.ic_fluent_qr_code_regular,
                        color: value.darkTheme ? null : Color(0xff075E54),
                      ),
                    ),
                  ),
                ],
              ),
              Gap(15),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 5).floor(),
                        (index) => SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )),
              Gap(15),
              Row(
                children: <Widget>[
                  Container(
                    child: Icon(FluentSystemIcons.ic_fluent_person_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Account",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Privacy, security, change number",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(25),
              Row(
                children: <Widget>[
                  Container(
                    child: Icon(FluentSystemIcons.ic_fluent_chat_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Chats",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Theme, wallpapers, chat history",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(25),
              Row(
                children: <Widget>[
                  Container(
                    child: Icon(FluentSystemIcons
                        .ic_fluent_channel_notifications_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Message, group & call tones",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(25),
              Row(
                children: <Widget>[
                  Container(
                    child: Icon(FluentSystemIcons.ic_fluent_storage_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Storage and data",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Network usage, auto-download",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(25),
              Row(
                children: <Widget>[
                  Container(
                    child:
                        Icon(FluentSystemIcons.ic_fluent_help_circle_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Help",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Help center, contact us, privacy policy",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(25),
              Row(
                children: <Widget>[
                  Container(
                    child: Icon(FluentSystemIcons.ic_fluent_group_regular),
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Invite a friend",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              Gap(30),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          "Powered by",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Gap(5),
                    Container(
                      child: Center(
                        child: Text(
                          "Jesaya Sohasuhatan Ambarita",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
