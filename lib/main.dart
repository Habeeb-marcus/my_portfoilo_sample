import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:profile/githubWebView.dart';
import 'package:profile/sample.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0Xff252522),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 100,
              backgroundColor: Color(0xffad9c00),
                child: CircleAvatar(
                  radius: 98,
                  backgroundImage: AssetImage('assets/my_pics.png',),
                ),                
            ),
            SizedBox(height: height*0.05,),
            const Text(
              'Habeeb Makusota',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.w300,
                // fontStyle: FontStyle.italic
              ),
            ),
               SizedBox(
              height: height * 0.003,
            ),
            const Text(
              '@Future_code',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white38,
                fontWeight: FontWeight.w300,
                // fontStyle: FontStyle.italic
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18,
                color:Color(0xffad9c00),
                //  LinearGradient(colors: [Colors.yellow, Color(0xffad9c00)],
                // ),
                fontWeight: FontWeight.bold,
                // fontStyle: FontStyle.italic
              ),
        
            ),

            SizedBox(
              height: height * 0.32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.05,
                ),
          
                InkWell(
                  onTap: () {
                     Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                         GithubWebView( url: 'https://github.com/Habeeb-marcus',),
                      ),
                    );
                  },
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.65,
                    decoration: BoxDecoration(
                      color: Color(0xffad9c00),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            'Open GitHub',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              // fontStyle: FontStyle.italic
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,),
                       Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
             
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
