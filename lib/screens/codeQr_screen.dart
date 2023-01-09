import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class CodeQrScreen extends StatefulWidget {
  const CodeQrScreen({Key? key}) : super(key: key);

  @override
  State<CodeQrScreen> createState() => _CodeQrScreenState();
}

class _CodeQrScreenState extends State<CodeQrScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.80,
              child: Stack(
                children: <Widget>[
                  QrImage(
                    data: "data",
                    version: 6,
                    foregroundColor: Color(0xff075E54),
                    errorCorrectionLevel: QrErrorCorrectLevel.M,
                    padding: EdgeInsets.all(30),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
