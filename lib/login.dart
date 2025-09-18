import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 74, 70),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 36, 74, 70),
        child: ListView(
          children: const [
            DrawerHeader(
              child: Text("Quick Menu", style: TextStyle(color: Colors.white)),
            ),

            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(
                "Open instant Account",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Divider(height: 40.0),
            ListTile(
              leading: Icon(Icons.location_on, ),
              title: Text("Find Us", style: TextStyle(color: Colors.white)),
            ),
            Divider(height: 40.0),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text("Get help", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 74, 70),
        title: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(4.0), // height of divider
          child: Divider(
            color: Colors.white, // you can change to grey or any color
            thickness: 1, // thickness of the line
            height: 1, // reduce space around line
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Options(
                  text: "Quick Transfer",
                  iconData: Icons.swap_horiz,
                  color: Colors.yellow,
                ),
                Options(
                  text: "Quick Bills",
                  iconData: Icons.receipt_long,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Options(
                  text: "Quick Airtime",
                  iconData: Icons.phone_android,
                  color: Colors.yellow,
                ),
                Options(
                  text: "Quick Balance",
                  iconData: Icons.account_balance_wallet,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text(
                "Username",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ("Enter Username"),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text(
                "Password",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: TextField(
                decoration: InputDecoration(
                  // suffixIcon: ,
                  hintText: ("Password"),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  contentPadding: EdgeInsets.only(left: 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.yellow, width: 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color;

  const Options({
    super.key,
    required this.text,
    required this.iconData,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 22, 41, 39),
        borderRadius: BorderRadius.circular(4.0),
      ),
      width: 150,
      height: 70,
      child: Column(
        children: [
          Icon(iconData, size: 30, color: color),
          SizedBox(height: 8),
          Text(text, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
