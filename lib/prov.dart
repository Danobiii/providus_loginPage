import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login page",

      home: MyHomePage(),
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 74, 70),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 36, 74, 70),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close, color: Colors.white),
                ),
                DrawerHeader(
                  child: Align(
                    alignment: Alignment.centerLeft,

                    child: Text(
                      "Quick Menu",

                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            // Divider(height: 40.0),
            ListTile(
              leading: Icon(Icons.grid_view, color: Colors.white),
              title: Text(
                "Open instant Account",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {},
            ),
            Divider(height: 40.0),
            ListTile(
              leading: Icon(Icons.location_on, color: Colors.white),
              title: Text("Find Us", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            Divider(height: 40.0),
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.white),
              title: Text("Get help", style: TextStyle(color: Colors.white)),
              onTap: () {},
            ),
            SizedBox(height: 320.0),

            /*spacer did not work*/
            Text(
              "Version 2.5.0",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
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
            Details(text: "Username", color: Colors.white),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 23, right: 23),
              child: TextField(
                style: TextStyle(color: Colors.white),
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
                style: TextStyle(color: Colors.white),
                obscureText: _obscure,
                decoration: InputDecoration(
                  // suffixIcon: Icon(Icons.visibility, color: Colors.white70),
                  hintText: "Password",

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscure = !_obscure;
                      });
                    },
                    icon: Icon(
                      _obscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white70,
                    ),
                  ),
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
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.only(left: 10)),
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.yellow,
                  checkColor: Colors.black,
                ),
                Text(
                  "Remember Me ",
                  style: TextStyle(
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 95)),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.yellow),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  child: const Text('Log in'),
                ),
                // Padding(padding: EdgeInsets.only(right: 1)),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(
                      255,
                      64,
                      65,
                      65,
                    ).withOpacity(0.7),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  onPressed: () {},
                  child: Icon(Icons.qr_code_scanner, size: 20),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Yet to register?"),
                    // Padding(padding: EdgeInsets.only(left: 10))
                    TextSpan(
                      text: "   Sign up",
                      style: TextStyle(color: Colors.yellow),
                    ),
                  ],
                ),
              ),
            ),
            // BottomNavigationBar: Padding(padding:
            // const EdgeInsets.all(8.0),
            // child:Text(
            //   "Contactless Payment >",
            //   TextAlign: TextAlign.center,
            // )
            // )
            Spacer(),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "                                 Contact Payment   >",
                /*align to center did not work*/
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String text;
  final Color color;
  const Details({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: color,
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

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const LoginPage());
// }

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Login page",

//       home: const MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(255, 36, 74, 70),
//       drawer: Drawer(
//         backgroundColor: const Color.fromARGB(255, 36, 74, 70),
//         child: ListView(
//           children: const [
//             DrawerHeader(
//               child: Text("Quick Menu", style: TextStyle(color: Colors.white)),
//             ),

//             ListTile(
//               leading: Icon(Icons.grid_view, color: Colors.white),
//               title: Text(
//                 "Open instant Account",
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//             Divider(height: 40.0),
//             ListTile(
//               leading: Icon(Icons.location_on, color: Colors.white),
//               title: Text("Find Us", style: TextStyle(color: Colors.white)),
//             ),
//             Divider(height: 40.0),
//             ListTile(
//               leading: Icon(Icons.help_outline, color: Colors.white),
//               title: Text("Get help", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),

//       appBar: AppBar(
//         backgroundColor: const Color.fromARGB(255, 36, 74, 70),
//         title: Padding(
//           padding: const EdgeInsets.all(40.0),
//           child: Text(
//             "Welcome Back",
//             style: TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.bold,
//               fontSize: 24,
//             ),
//           ),
//         ),
//         bottom: const PreferredSize(
//           preferredSize: Size.fromHeight(4.0), // height of divider
//           child: Divider(
//             color: Colors.white, // you can change to grey or any color
//             thickness: 1, // thickness of the line
//             height: 1, // reduce space around line
//           ),
//         ),
//       ),
//       body: Container(
//         padding: EdgeInsets.only(top: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Options(
//                   text: "Quick Transfe",
//                   iconData: Icons.swap_horiz,
//                   color: Colors.yellow,
//                 ),
//                 Options(
//                   text: "Quick Bills",
//                   iconData: Icons.receipt_long,
//                   color: Colors.yellow,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Options(
//                   text: "Quick Airtime",
//                   iconData: Icons.phone_android,
//                   color: Colors.yellow,
//                 ),
//                 Options(
//                   text: "Quick Balance",
//                   iconData: Icons.account_balance_wallet,
//                   color: Colors.yellow,
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Details(text: "Username", color: Colors.white),
//             SizedBox(height: 5),
//             Padding(
//               padding: EdgeInsets.only(left: 23, right: 23),
//               child: TextField(
//                 decoration: InputDecoration(
//                   hintText: ("Enter Username"),
//                   hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   contentPadding: EdgeInsets.only(left: 10),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.yellow, width: 1),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.yellow, width: 1),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Padding(
//               padding: EdgeInsets.only(left: 23),
//               child: Text(
//                 "Password",
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             SizedBox(height: 5),
//             Padding(
//               padding: EdgeInsets.only(left: 23, right: 23),
//               child: TextField(
//                 obscureText: _obscure,
//                 decoration: InputDecoration(
//                   // suffixIcon: Icon(Icons.visibility, color: Colors.white70),
//                   hintText: "Password",
//                   suffixIcon: IconButton(
//                     onPressed: () {
//                       setState(() {
//                         _obscure = !_obscure;
//                       });
//                     },
//                     icon: Icon(
//                       _obscure ? Icons.visibility_off : Icons.visibility,
//                       color: Colors.white70,
//                     ),
//                   ),
//                   hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(5),
//                   ),
//                   contentPadding: EdgeInsets.only(left: 10),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.yellow, width: 1),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.yellow, width: 1),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Padding(padding: EdgeInsets.only(left: 10)),
//                 Checkbox(
//                   value: true,
//                   onChanged: (value) {},
//                   activeColor: Colors.yellow,
//                   checkColor: Colors.black,
//                 ),
//                 Text(
//                   "Remember Me ",
//                   style: TextStyle(
//                     color: Colors.yellow,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Padding(padding: EdgeInsets.only(left: 95)),
//                 Text(
//                   "Forgot Password?",
//                   style: TextStyle(color: Colors.yellow),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.yellow,
//                     foregroundColor: Colors.black,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 100,
//                       vertical: 16,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(2),
//                     ),
//                   ),
//                   child: const Text('Log in'),
//                 ),
//                 // Padding(padding: EdgeInsets.only(right: 1)),
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(
//                       255,
//                       64,
//                       65,
//                       65,
//                     ).withOpacity(0.7),
//                     padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(2),
//                     ),
//                   ),
//                   onPressed: () {},
//                   child: Icon(Icons.qr_code_scanner, size: 20),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: RichText(
//                 text: TextSpan(
//                   children: [
//                     TextSpan(text: "Yet to register?"),
//                     // Padding(padding: EdgeInsets.only(left: 10))
//                     TextSpan(
//                       text: "   Sign up",
//                       style: TextStyle(color: Colors.yellow),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // BottomNavigationBar: Padding(padding:
//             // const EdgeInsets.all(8.0),
//             // child:Text(
//             //   "Contactless Payment >",
//             //   TextAlign: TextAlign.center,
//             // )
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Details extends StatelessWidget {
//   final String text;
//   final Color color;
//   const Details({super.key, required this.text, required this.color});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 23),
//       child: Text(
//         text,
//         style: TextStyle(
//           fontSize: 15,
//           fontWeight: FontWeight.bold,
//           color: color,
//         ),
//       ),
//     );
//   }
// }

// class Options extends StatelessWidget {
//   final String text;
//   final IconData iconData;
//   final Color color;

//   const Options({
//     super.key,
//     required this.text,
//     required this.iconData,
//     required this.color,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 5),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(255, 22, 41, 39),
//         borderRadius: BorderRadius.circular(4.0),
//       ),
//       width: 150,
//       height: 70,
//       child: Column(
//         children: [
//           Icon(iconData, size: 30, color: color),
//           SizedBox(height: 8),
//           Text(text, style: TextStyle(color: Colors.white)),
//         ],
//       ),
//     );
//   }
// }
