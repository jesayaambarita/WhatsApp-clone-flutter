import 'package:flutter/material.dart';

class CallsScreen extends StatefulWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  State<CallsScreen> createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.network(
                            "https://img.freepik.com/free-vector/realistic-martin-luther-king-day_23-2148745914.jpg?size=338&ext=jpg&ga=GA1.2.1308427518.1666760983&semt=sph",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 56, 0),
                      child: Text(
                        "Luther Nexen Manullang",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 100, 0),
                      child: Text(
                        "(2) Today 4:07 PM",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Icon(Icons.call),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  margin: EdgeInsets.fromLTRB(10, 20, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Stack(
                      children: <Widget>[
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.network(
                            "https://img.freepik.com/free-vector/realistic-martin-luther-king-day_23-2148745914.jpg?size=338&ext=jpg&ga=GA1.2.1308427518.1666760983&semt=sph",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 10, 56, 0),
                      child: Text(
                        "Luther Nexen Manullang",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 5, 100, 0),
                      child: Text(
                        "(2) Today 4:07 PM",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Spacer(
                  flex: 1,
                ),
                Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                      child: Icon(Icons.call),
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
