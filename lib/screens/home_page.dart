import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone/screens/calls_screen.dart';
import 'package:whatsappclone/screens/camera_screen.dart';
import 'package:whatsappclone/screens/chat_screen.dart';
import 'package:whatsappclone/screens/settings_screen.dart';
import 'package:whatsappclone/screens/status_screen.dart';
import 'package:whatsappclone/utils/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  bool showFab = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, initialIndex: 0, vsync: this);
    controller.addListener(() {
      if (controller.index == 1) {
        showFab = false;
      } else {
        showFab = true;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, DarkThemeProvider value, child) {
        return Scaffold(
          appBar: AppBar(
            elevation: 0,
            actions: <Widget>[
              Container(
                child: Icon(FluentSystemIcons.ic_fluent_airplane_regular),
                margin: EdgeInsets.only(right: 15),
              ),
              Container(
                child: IconButton(
                  onPressed: () {
                    value.darkTheme
                        ? value.darkTheme = false
                        : value.darkTheme = true;
                  },
                  icon: Icon(value.darkTheme
                      ? FluentSystemIcons.ic_fluent_weather_moon_regular
                      : FluentSystemIcons.ic_fluent_weather_sunny_regular),
                ),
                margin: EdgeInsets.only(right: 15),
              ),
              Container(
                child: Icon(FluentSystemIcons.ic_fluent_search_regular),
                margin: EdgeInsets.only(right: 10),
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      child: Text("New group"),
                      value: 0,
                    ),
                    PopupMenuItem<int>(
                      child: Text("New broadcast"),
                      value: 1,
                    ),
                    PopupMenuItem<int>(
                      child: Text("Linked messages"),
                      value: 2,
                    ),
                    PopupMenuItem<int>(
                      child: GestureDetector(
                        child: Text("Settings"),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return SettingsScreen();
                              },
                            ),
                          );
                        },
                      ),
                      value: 3,
                    ),
                  ];
                },
              ),
            ],
            title: Text("WhatsApp"),
            backgroundColor: value.darkTheme
                ? Color.fromARGB(255, 52, 52, 52)
                : Color(0xff075E54),
            bottom: TabBar(
              indicatorColor: Colors.white,
              controller: controller,
              tabs: <Widget>[
                Tab(
                  child: Text("Pesan"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: <Widget>[
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
          floatingActionButton: showFab
              ? FloatingActionButton(
                  onPressed: () {},
                  child: Icon(
                    FluentSystemIcons.ic_fluent_chat_regular,
                    color: value.darkTheme ? Colors.white : Colors.white,
                  ),
                  backgroundColor: value.darkTheme
                      ? Color.fromARGB(255, 52, 52, 52)
                      : Color(0xff075E54),
                )
              : null,
        );
      },
    );
  }
}
