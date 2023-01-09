import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:whatsappclone/utils/app_layout.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController _textEditingController = TextEditingController();
  late String codeDialog;
  late String valueText;
  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          actions: <Widget>[
            TextButton(
              onPressed: () {},
              child: Text("Cancel"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Simpan"),
              style: TextButton.styleFrom(
                textStyle: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
          ],
          title: Text("Ubah Nama"),
          content: TextField(
            onChanged: (value) {
              setState(() {
                valueText = value;
              });
            },
            controller: _textEditingController,
            decoration: InputDecoration(hintText: "Masukkan nama anda"),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff075E54),
        title: Text("Profile"),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20, left: 15),
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.network(
                      "https://pps.whatsapp.net/v/t61.24694-24/310907478_138949048920425_3826446173722044846_n.jpg?ccb=11-4&oh=01_AdTPUAV0EkIY0JK6QZeq1QBg6loVVADtlCwPenKFhJFjvg&oe=637CD88C",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  margin: EdgeInsets.only(top: 50, left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Name",
                          style: Styles.headLineStyle4,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "Frans Rumapea",
                          style: Styles.textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                GestureDetector(
                  onTap: () {
                    _displayTextInputDialog(context);
                  },
                  child: Container(
                    child:
                        Icon(FluentSystemIcons.ic_fluent_pen_settings_regular),
                    margin: EdgeInsets.only(top: 50, right: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Icon(FontAwesomeIcons.circleInfo),
                  margin: EdgeInsets.only(top: 50, left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "About",
                          style: Styles.headLineStyle4,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "Tidak Bisa Bicara, WhatsApp Aja",
                          style: Styles.textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Container(
                  child: Icon(FluentSystemIcons.ic_fluent_pen_settings_regular),
                  margin: EdgeInsets.only(top: 50, right: 20),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  child: Icon(FluentSystemIcons.ic_fluent_phone_regular),
                  margin: EdgeInsets.only(top: 50, left: 20),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Phone",
                          style: Styles.headLineStyle4,
                        ),
                      ),
                      Gap(5),
                      Container(
                        child: Text(
                          "+62 823-6098-4623",
                          style: Styles.textStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
