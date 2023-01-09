import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsappclone/screens/home_page.dart';
import 'package:whatsappclone/utils/provider.dart';
import 'package:whatsappclone/widget/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DarkThemeProvider(),
      child: Consumer(
        builder: (BuildContext context, DarkThemeProvider value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: value.darkTheme ? ThemeData.dark() : ThemeData.light(),
            home: const SplashSecreen(),
          );
        },
      ),
    );
  }
}
