import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi-Card",
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('images/profile.png'),
                backgroundColor: Colors.red,
                radius: 50,
              ),
              const Text(
                "SHR",
                style: TextStyle(
                    letterSpacing: 20,
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Pacifico"),
              ),
              Text(
                "DEVELOPER",
                style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade100,
                    fontFamily: "SourceSans3"),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title: Text(
                        '+91 Dummy',
                        style: TextStyle(
                            fontFamily: "SourceSans3",
                            fontSize: 20,
                            color: Colors.teal.shade900),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'dummy@gmail.com',
                        style: TextStyle(
                            fontFamily: "SourceSans3",
                            fontSize: 20,
                            color: Colors.teal.shade900),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ++++++++++ Layout Challenge ++++++++++++
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//           body: SafeArea(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: <Widget>[
//                   Container(
//                     color: Colors.red,
//                     height : 100,
//                     width: 100,
//                   ),
//                   const SizedBox(
//                     height: 10,
//                     width: 10,
//                   ),
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Container(
//                         height: 100,
//                         width: 100,
//                         color: Colors.yellow,
//                       ),
//                       Container(
//                         height: 100,
//                         width: 100,
//                         color: Colors.green,
//                       )
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 10,
//                     width: 10,
//                   ),
//                   Container(
//                       color: Colors.blue,
//                       height : 100,
//                       width: 100,
//                   ),
//                 ],
//           )
//           )
//       ),
//     );
//   }
// }

// +++++++++ How to use Column & Row Widgets for Layout +++++++++++++
// -- only state less widgets are reloaded during hot reload
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // -- scaffold is a library class that we can use as the foundation for our app
//       home: Scaffold(
//         backgroundColor: Colors.teal,
//         // -- using safe area makes sure that out widgets are not going out of visible screen boundaries
//         body: SafeArea(
//           // -- by default column height = screen size & column width = max width of children
//           child: Column(
//             // --changing column height
//             // mainAxisSize: MainAxisSize.min,
//             // verticalDirection: VerticalDirection.down,
//             // mainAxisAlignment: MainAxisAlignment.end,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             // mainAxisAlignment: MainAxisAlignment.spaceAround,
//             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             // crossAxisAlignment: CrossAxisAlignment.end,
//             // crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               Container(
//                 height: 100,
//                 width: 150,
//                 // margin: const EdgeInsets.all(10),
//                 padding: const EdgeInsets.all(30),
//                 color: Colors.blue,
//                 child: const Text("Container 1"),
//               ),
//               // -- A sized box adds gap between 2 containers in a column
//               const SizedBox(
//                 height: 20.0,),
//               Container(
//                 height: 100,
//                 width: 150,
//                 // margin: const EdgeInsets.all(10),
//                 padding: const EdgeInsets.all(30),
//                 color: Colors.red,
//                 child: const Text("Container 2"),
//               ),
//               Container(
//                 height: 100,
//                 width: 150,
//                 // margin: const EdgeInsets.all(10),
//                 padding: const EdgeInsets.all(30),
//                 color: Colors.green,
//                 child: const Text("Container 2"),
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 10.0,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
