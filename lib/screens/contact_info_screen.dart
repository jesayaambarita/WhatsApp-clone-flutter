import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:whatsappclone/utils/app_layout.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({Key? key}) : super(key: key);

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        actions: <Widget>[
          PopupMenuButton(
            itemBuilder: (contex) {
              return [
                PopupMenuItem<int>(
                  child: Text("Share"),
                ),
                PopupMenuItem<int>(
                  child: Text("Edit"),
                ),
                PopupMenuItem<int>(
                  child: Text("View in address book"),
                ),
                PopupMenuItem<int>(
                  child: Text("Verify security code"),
                ),
              ];
            },
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Material(
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.asset(
                          "images/liviana.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Gap(14),
                  Text(
                    "My First Love",
                    style: Styles.headLineStyle3,
                  ),
                  Gap(14),
                  Text(
                    "+62 878-9986-1940",
                    style: Styles.headLineStyle4,
                  ),
                  Gap(25),
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FluentSystemIcons.ic_fluent_chat_regular,
                              color: Color(0xff075E54),
                              size: 30,
                            ),
                            Gap(20),
                            Text(
                              "Message",
                              style: Styles.headLineStyle4.copyWith(
                                color: Color(0xff075E54),
                              ),
                            ),
                          ],
                        ),
                        Gap(30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FluentSystemIcons.ic_fluent_call_add_regular,
                              color: Color(0xff075E54),
                              size: 30,
                            ),
                            Gap(20),
                            Text(
                              "Audio",
                              style: Styles.headLineStyle4.copyWith(
                                color: Color(0xff075E54),
                              ),
                            ),
                          ],
                        ),
                        Gap(30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              FluentSystemIcons.ic_fluent_video_regular,
                              color: Color(0xff075E54),
                              size: 30,
                            ),
                            Gap(20),
                            Text(
                              "Video",
                              style: Styles.headLineStyle4.copyWith(
                                color: Color(0xff075E54),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(29),
          Material(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_shield_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Custom Privacy",
                            ),
                          ),
                          Gap(6),
                          Container(
                            width: 220,
                            child: Text(
                                "Customize the privacy options for each contact/group separately",
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: Styles.headLineStyle4),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Color(0xff075E54),
                          activeColor: Color(0xff075E54),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_eye_hide_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Hide Contact Name",
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Color(0xff075E54),
                          activeColor: Color(0xff075E54),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_alert_off_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Security",
                            ),
                          ),
                          Gap(6),
                          Container(
                            width: 220,
                            child: Text("OFF",
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: Styles.headLineStyle4),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_phone_mobile_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "No calls",
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Color(0xff075E54),
                          activeColor: Color(0xff075E54),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_chat_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Contact Online Toast",
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15, right: 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Color(0xff075E54),
                          activeColor: Color(0xff075E54),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Gap(29),
          Material(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Row(
                      children: <Widget>[
                        Text("Media, links, and docs"),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          "21",
                          style: Styles.headLineStyle4,
                        ),
                        Gap(8),
                        Icon(FluentSystemIcons.ic_fluent_arrow_right_regular),
                        Gap(8),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 20, 8, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/liviana.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 8, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/liviana.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 8, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/liviana.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 8, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/liviana.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 20, 8, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'images/liviana.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Gap(29),
          Material(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons
                              .ic_fluent_channel_notifications_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Mute notifications",
                            ),
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, right: 15),
                        child: Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                            });
                          },
                          activeTrackColor: Color(0xff075E54),
                          activeColor: Color(0xff075E54),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_call_outbound_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Custom notifications",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_image_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Media visibility",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_heart_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Starred messages",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Gap(29),
          Material(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_lock_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Encryption",
                            ),
                          ),
                          Gap(6),
                          Container(
                            width: 220,
                            child: Text(
                                "Messages and calls are end-to-end encrypted. Tap to verify",
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: Styles.headLineStyle4),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_timer_regular,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Disappearing messages",
                            ),
                          ),
                          Gap(6),
                          Container(
                            width: 220,
                            child: Text("Off",
                                maxLines: 2,
                                overflow: TextOverflow.clip,
                                style: Styles.headLineStyle4),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Gap(29),
          Material(
            elevation: 4,
            child: Container(
              padding: EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_block_regular,
                          size: 30,
                          color: Colors.red,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Block My First Love",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Gap(20),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Icon(
                          FluentSystemIcons.ic_fluent_thumb_dislike_regular,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                      Gap(20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(top: 30),
                            child: Text(
                              "Report My First Love",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
