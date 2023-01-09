import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:status_view/status_view.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:whatsappclone/screens/camera_screen.dart';
import 'package:whatsappclone/utils/app_layout.dart';
import 'package:whatsappclone/utils/app_widget_screen.dart';
import 'package:whatsappclone/utils/provider.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    List<StoryItem> storyItems = [
      StoryItem.text(title: "Gas Lha", backgroundColor: Colors.amber),
      StoryItem.text(title: "Gas Lha", backgroundColor: Colors.amber),
      StoryItem.text(title: "Gas Lha", backgroundColor: Colors.amber),
    ];
    final story = Stack(
      children: <Widget>[
        PageView(
          children: <Widget>[
            StoryView(
              storyItems: storyItems,
              controller: controller,
              inline: false,
              repeat: false,
              onComplete: () {
                Navigator.pop(context);
              },
              onVerticalSwipeComplete: (direction) {
                if (direction == Direction.down) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
        Positioned(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                child: StatusView(
                  radius: 25,
                  spacing: 15,
                  strokeWidth: 2,
                  indexOfSeenStatus: 2,
                  numberOfStatus: 3,
                  padding: 4,
                  centerImageUrl:
                      "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                  seenColor: Colors.grey,
                  unSeenColor: Colors.red,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width * 0.53,
                    child: Text(
                      "Livia Sitanggang",
                      style:
                          Styles.headLineStyle3.copyWith(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Gap(5),
                  Container(
                    child: Text("Just now",
                        overflow: TextOverflow.ellipsis,
                        style: Styles.headLineStyle4
                            .copyWith(color: Colors.white)),
                    width: MediaQuery.of(context).size.width * .44,
                  ),
                ],
              ),
            ],
          ),
          top: 50.0,
          left: 10.0,
          right: 10.0,
        ),
      ],
    );
    final size = AppLayout.getSize(context);
    return Consumer(builder: (context, DarkThemeProvider value, child) {
      return Scaffold(
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: value.darkTheme
              ? Color.fromARGB(255, 52, 52, 52)
              : Color(0xff075E54),
          children: [
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.camera),
              onTap: () {},
            ),
            SpeedDialChild(
              child: Icon(FontAwesomeIcons.file),
              onTap: () {},
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CameraScreen();
                      },
                    ),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          width: 4,
                          color: Color(0xff075E54),
                        ),
                      ),
                      margin: EdgeInsets.only(top: 20, left: 15, right: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Stack(
                            children: <Widget>[
                              FancyShimmerImage(
                                imageUrl:
                                    "https://pps.whatsapp.net/v/t61.24694-24/312012118_1119334405440586_2706533836414249704_n.jpg?ccb=11-4&oh=01_AdQOo2ft9qkSxpmQPDPSq8IaUvWbq2xjUDNJBlYomqHJbQ&oe=63B50BF9",
                              ),
                              Positioned(
                                right: -1,
                                bottom: -1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff075E54),
                                  ),
                                  child: Icon(
                                    FluentSystemIcons.ic_fluent_add_regular,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
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
                                width: MediaQuery.of(context).size.width * 0.68,
                                child: Text(
                                  "My Status",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Gap(5),
                            ],
                          ),
                        ),
                        Container(
                          child: Icon(FluentSystemIcons.ic_fluent_more_regular),
                          margin: EdgeInsets.only(top: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(13),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: value.darkTheme ? null : Styles.bgColor,
                padding: EdgeInsets.only(top: 7, left: 13),
                child: Text("Recent updates"),
              ),
              Gap(20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) {
                        return story;
                      },
                    ),
                  );
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: StatusView(
                        radius: 33,
                        spacing: 15,
                        strokeWidth: 2,
                        indexOfSeenStatus: 2,
                        numberOfStatus: 3,
                        padding: 4,
                        centerImageUrl:
                            "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                        seenColor: Colors.grey,
                        unSeenColor: Color(0xff075E54),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.53,
                          child: Text(
                            "Livia Sitanggang",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w500),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Gap(5),
                        Container(
                          child: Text(
                            "Just now",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          width: MediaQuery.of(context).size.width * .44,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(15),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: StatusView(
                      radius: 33,
                      spacing: 15,
                      strokeWidth: 2,
                      indexOfSeenStatus: 2,
                      numberOfStatus: 4,
                      padding: 4,
                      centerImageUrl:
                          "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                      seenColor: Colors.grey,
                      unSeenColor: Color(0xff075E54),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: Text(
                          "Ferdinand",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "38 Minutes ago",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        width: MediaQuery.of(context).size.width * .44,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(15),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: StatusView(
                      radius: 33,
                      spacing: 15,
                      strokeWidth: 2,
                      indexOfSeenStatus: 1,
                      numberOfStatus: 2,
                      padding: 4,
                      centerImageUrl:
                          "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                      seenColor: Colors.grey,
                      unSeenColor: Color(0xff075E54),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: Text(
                          "Lily Miranda Banjarnahor",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "30 Minutes ago",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        width: MediaQuery.of(context).size.width * .44,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(13),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 30,
                color: value.darkTheme ? null : Styles.bgColor,
                padding: EdgeInsets.only(top: 7, left: 13),
                child: Text("Viewed updates"),
              ),
              Gap(15),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: StatusView(
                      radius: 33,
                      spacing: 15,
                      strokeWidth: 2,
                      indexOfSeenStatus: 1,
                      numberOfStatus: 1,
                      padding: 4,
                      centerImageUrl:
                          "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                      seenColor: Colors.grey,
                      unSeenColor: const Color(0xff075E54),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: Text(
                          "Trivani P Sihaloho",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "Today at 8:01 PM",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        width: MediaQuery.of(context).size.width * .44,
                      ),
                    ],
                  ),
                ],
              ),
              Gap(15),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: StatusView(
                      radius: 33,
                      spacing: 15,
                      strokeWidth: 2,
                      indexOfSeenStatus: 2,
                      numberOfStatus: 2,
                      padding: 4,
                      centerImageUrl:
                          "https://pps.whatsapp.net/v/t61.24694-24/317014878_1164673230841896_7781711919506015594_n.jpg?ccb=11-4&oh=01_AdR-zDnfwGdzj_jKv7TeuVn8byyi2mjswElGUbUCOXbMww&oe=63B500D4",
                      seenColor: Colors.grey,
                      unSeenColor: Color(0xff075E54),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: Text(
                          "Johanes Ti-B",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "Today at 8:04 PM",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                        width: MediaQuery.of(context).size.width * .44,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    });
  }
}
