import 'dart:io';

import 'package:cu_iti_quizapp/screens/category_screen.dart';
import 'package:cu_iti_quizapp/screens/landing_screen.dart';
import 'package:cu_iti_quizapp/screens/questions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.green)),
      home: LandingScreen(),
    );
    //  Platform.isIOS
    //     ? CupertinoApp(
    //         title: 'Flutter Demo',
    //         theme: CupertinoThemeData(
    //           primaryColor: CupertinoColors.systemRed,
    //           barBackgroundColor: CupertinoColors.systemGreen,
    //           // Cupertino doesn't have direct support for color schemes like Material3,
    //           // so you may need to adjust other styling properties manually if needed.
    //         ),
    //         home: const MyHomePage(title: 'CU ITI Quiz App'),
    //       )
    //     : MaterialApp(
    //         title: 'Flutter Demo',
    //         theme: ThemeData(
    //             colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
    //             useMaterial3: true,
    //             appBarTheme: AppBarTheme(backgroundColor: Colors.green)),
    //         home: const MyHomePage(title: 'CU ITI Quiz App'),
    //       );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//     print(_counter);
//   }

//   void _decrementCounter() {
//     if (_counter != 0) {
//       setState(() {
//         _counter--;
//       });
//     }
//     print(_counter);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Platform.isIOS
//         ? CupertinoPageScaffold(
//             navigationBar: CupertinoNavigationBar(
//               middle: Text("this iphon"),
//               backgroundColor: CupertinoColors.systemGreen,
//             ),
//             child: Center(
//               child: Column(
//                 children: [
//                   Text('Welcome to cuppertino'),
//                   ElevatedButton(onPressed: () {}, child: Text('data'))
//                 ],
//               ),
//             ),
//           )
//         : Scaffold(
//             appBar: AppBar(
//               title: Text('Hello'),
//             ),
//             body: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'لقد قمت بالضغط علي هذا الزر هذا العدد من المرات',
//                   style: TextStyle(fontSize: 24, color: Colors.red),
//                 ),
//                 Text(
//                   'number of clicks : $_counter',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 ),
//                 ElevatedButton(onPressed: () {}, child: Text('nothing')),
//                 ElevatedButton(
//                     onPressed: () {
//                       print('Nothing');
//                     },
//                     child: Text('print nothing')),
//                 Container(
//                   height: 100,
//                   width: 200,
//                   decoration: BoxDecoration(
//                       color: Colors.amber,
//                       border: Border.all(width: 4, color: Colors.black),
//                       borderRadius: BorderRadius.circular(22)),
//                   child: Center(
//                     child: Text(
//                       'Hello',
//                       style: TextStyle(color: Colors.red),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 3,
//                   child: Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//                         color: Colors.red,
//                         border: Border.all(width: 4, color: Colors.black),
//                         borderRadius: BorderRadius.circular(22)),
//                     child: Center(
//                       child: Text(
//                         'Hello',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     width: 200,
//                     decoration: BoxDecoration(
//                         color: Colors.blue,
//                         border: Border.all(width: 4, color: Colors.black),
//                         borderRadius: BorderRadius.circular(22)),
//                     child: Center(
//                       child: Text(
//                         'Hello',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             floatingActionButton: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 FloatingActionButton(
//                   onPressed: _decrementCounter,
//                   child: Icon(Icons.remove),
//                 ),
//                 // SizedBox(width: 50),
//                 FloatingActionButton(
//                   onPressed: _incrementCounter,
//                   tooltip: 'Increment',
//                   child: Icon(Icons.add),
//                 ),
//               ],
//             ),
//           );
//   }
// }
