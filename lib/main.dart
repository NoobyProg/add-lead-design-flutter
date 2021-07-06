import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Realkeeper_pages',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _top(),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          child: _body(context),
        ),
      ],
    ));
  }
}

_top() {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Color(0xFF09184C),
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            Column(
              children: <Widget>[
                Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
                Text(
                  "Bulk Import",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Add Lead",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                  Text(
                    "Once you add lead, you can schedule followup and share",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                  ),
                  Text(
                    "deals to increase your Sales.",
                    style: TextStyle(color: Colors.blueGrey, fontSize: 12),
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

_body(BuildContext context) {
  return Container(
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.86,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildTextField(
                context,
                query: "Name",
                prefix: Icons.person_outline_sharp,
                suffix: Icons.perm_contact_calendar,
              ),
              buildTextField(context,
                  query: "Email", prefix: Icons.mail_outline),
              buildTextField(context,
                  query: "Phone Number", prefix: Icons.phone_outlined),
              buildTextField(context,
                  query: "Alternate Number", prefix: Icons.phone_outlined),
              buildTextField(context,
                  query: "Address", prefix: Icons.location_on_rounded),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Status",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "Lead Source",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 140,
                    height: 60,
                    child: InputDecorator(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "New Lead",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 140,
                    height: 60,
                    child: InputDecorator(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: [
                            DropdownMenuItem(
                              child: Text(
                                "Friend",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Remarks",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 35,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Remarks",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.845,
              height: 45,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.blue,
                    Colors.indigo
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.all(Radius.circular(7)),
              ),
              child: Center(
                child: Text("Submit", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.bold),),
              ),
            ),
          ),
          SizedBox(height: 500,)
        ],
      ),
    ),
  );
}

Widget buildTextField(
  BuildContext context, {
  required String query,
  required IconData prefix,
  final IconData? suffix,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        query,
        style: TextStyle(color: Colors.grey),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 38,
        child: TextField(
          decoration: InputDecoration(
            hintText: query,
            prefixIcon: Icon(
              prefix,
              color: Colors.blue,
            ),
            suffixIcon: Icon(
              suffix,
              color: Colors.indigo,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}
