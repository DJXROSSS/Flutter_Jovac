// import 'package:flutter/material.dart';
// import 'package:assignment3/pages/home_page.dart';
// void main() {
//   runApp(const resumeApp());
// }
//
// class resumeApp extends StatelessWidget {
//   const resumeApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Resume App',
//       home: MyApp(),
//     );
//   }
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int _currindex=0;
//   final List<Widget> _pages =[
//     HomePage(),
//     // About_page(),
//     // Contact_page(),
//   ];
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//          body: _pages[_currindex],
//          bottomNavigationBar: BottomNavigationBar(
//            type: BottomNavigationBarType.fixed,
//              currentIndex: _currindex,
//              onTap: (value) =>{
//              setState(() {
//                _currindex=value;
//              }),
//              },
//              items: [
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.home_filled),
//                    label: 'Home'),
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.info_outline_rounded),
//                    label: 'About'),
//                BottomNavigationBarItem(
//                    icon: Icon(Icons.mail_outline_sharp),
//                    label: 'Contact'),
//              ]
//          ),
//        );
//       // This trailing comma makes auto-formatting nicer for build methods.
//   }
// }
import 'package:flutter/material.dart';

void main(){
  runApp(resumeApp());
}

class resumeApp extends StatelessWidget {
  const resumeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          actions: const [
            Icon(Icons.settings_outlined)
          ],
          centerTitle: true,
        ),
        body:

        Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Center(child:
            Text('Welcome to Our App',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Explore the features and information we offer. '
                  'Stay updated with the latest news and'
                  'insights.', style: TextStyle(fontSize: 18) ),
            ),
            const SizedBox(height: 30),
            const Text('App Highlights', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            Row(
              children: [
                Container(
                  height: 100, width: 100,
                  color: Colors.grey.shade200,
                  child: const Center(
                      child: Icon(Icons.explore_outlined)
                  ),
                ),
                const SizedBox(width: 16,),
                const ListTile(
                  title: Text('Explore', style: TextStyle(fontSize: 18),),
                  subtitle: Text('Discover new content and features',
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ),
                Container(
                  height: 100, width: 100,
                  color: Colors.grey.shade200,
                  child: Center(
                      child: Icon(Icons.macro_off_rounded)
                  ),
                ),
                const SizedBox(width: 16,),
                const ListTile(
                  title: Text('Contact', style: TextStyle(fontSize: 18),),
                  subtitle: Text('Get in touch with me',
                      style: TextStyle(fontSize: 16, color: Colors.blue)),
                ),
              ],
            )
          ],
        ),

      ),
    );
  }
}