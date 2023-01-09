import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:whatsappclone/screens/contact_info_screen.dart';

class ChatingScreen extends StatefulWidget {
  const ChatingScreen({Key? key}) : super(key: key);

  @override
  State<ChatingScreen> createState() => _ChatingScreenState();
}

class _ChatingScreenState extends State<ChatingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff075E54),
        title: GestureDetector(
          child: Text("My First Love"),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ContactInfoScreen();
            }));
          },
        ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 30,
            ),
            child: Icon(Icons.video_call),
          ),
          Container(
            margin: EdgeInsets.only(
              right: 15,
            ),
            child: Icon(Icons.call),
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: GestureDetector(
                    child: Text("Contact info"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactInfoScreen();
                      }));
                    },
                  ),
                  value: 0,
                ),
                PopupMenuItem<int>(
                  child: Text("Select message"),
                  value: 1,
                ),
                PopupMenuItem<int>(
                  child: Text("Mute notification"),
                  value: 2,
                ),
                PopupMenuItem<int>(
                  child: Text("Delete chat"),
                  value: 3,
                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                print("Contact account menu is selected.");
              } else if (value == 1) {
                print("Settings menu is selected.");
              } else if (value == 2) {
                print("Logout menu is selected.");
              }
            },
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              BubbleSpecialThree(
                text: 'Added iMassage shape bubbles',
                color: Color(0xff075E54),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
                sent: true,
                seen: true,
                delivered: true,
              ),
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: Color(0xff075E54),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: 'Added iMassage shape bubbles',
                color: Color(0xff075E54),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: Color(0xff075E54),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: 'Added iMassage shape bubbles',
                color: Color(0xff075E54),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: Color(0xff075E54),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: 'Added iMassage shape bubbles',
                color: Color(0xff075E54),
                tail: false,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Please try and give some feedback on it!',
                color: Color(0xff075E54),
                tail: true,
                textStyle: TextStyle(color: Colors.white, fontSize: 16),
              ),
              BubbleSpecialThree(
                text: 'Sure',
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "I tried. It's awesome!!!",
                color: Color(0xFFE8E8EE),
                tail: false,
                isSender: false,
              ),
              BubbleSpecialThree(
                text: "Thanks",
                color: Color(0xFFE8E8EE),
                tail: true,
                isSender: false,
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
          MessageBar(
            onSend: (_) => print(_),
            actions: [
              InkWell(
                child: Icon(
                  Icons.add,
                  color: Color(0xff075E54),
                  size: 24,
                ),
                onTap: () {},
              ),
              Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: InkWell(
                  child: Icon(
                    Icons.camera_alt,
                    color: Color(0xff075E54),
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
