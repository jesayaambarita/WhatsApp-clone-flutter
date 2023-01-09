import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:whatsappclone/screens/codeQr_screen.dart';
import 'package:whatsappclone/screens/scan_code.dart';
import 'package:whatsappclone/utils/app_layout.dart';

class CodeQrLayout extends StatefulWidget {
  const CodeQrLayout({Key? key}) : super(key: key);

  @override
  State<CodeQrLayout> createState() => _CodeQrLayoutState();
}
//SafeArea(
//   child: Center(
//     child: QrImage(
//       data: "data",
//       version: 6,
//       foregroundColor: Color(0xff075E54),
//       errorCorrectionLevel: QrErrorCorrectLevel.M,
//       padding: EdgeInsets.all(30),
//     ),
//   ),
// ),

class _CodeQrLayoutState extends State<CodeQrLayout>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 2, initialIndex: 0, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
        backgroundColor: Colors.white,
        title: Text(
          "QR code",
          style: TextStyle(color: Styles.textColor),
        ),
        actions: <Widget>[
          Icon(
            FluentSystemIcons.ic_fluent_share_android_regular,
            color: Colors.grey,
          ),
          PopupMenuButton(
            icon: Icon(
              FluentSystemIcons.ic_fluent_more_vertical_regular,
              color: Colors.grey,
            ),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  child: Text("Reset QR code"),
                  value: 0,
                ),
              ];
            },
          ),
        ],
        bottom: TabBar(
          labelColor: Styles.textColor,
          indicatorColor: Colors.transparent,
          controller: controller,
          tabs: <Widget>[
            Tab(
              child: Text("MY CODE"),
            ),
            Tab(
              child: Text("SCAN CODE"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          CodeQrScreen(),
          ScanCodeScreen(),
        ],
      ),
    );
  }
}
