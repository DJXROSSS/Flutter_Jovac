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
      debugShowCheckedModeBanner: false,
      title: 'Assignment2',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile'
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: EdgeInsetsGeometry.all(4),
              child: Icon(
                Icons.settings,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // spacing: 2,
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFFf7d5ae),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/premium_dahej.jpg'
                        )
                    )
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Ethan Carter',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                  ),
                ),
                Text(
                  'Product Designer',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Text(
                  'San Francisco, CA',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 30,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Skills',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Align(
                  // alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Wrap(
                      runSpacing: 12,
                      direction: Axis.horizontal,
                      spacing: 10,
                      children: [
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'UI/UX Design',
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'User Research',
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Prototyping',
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Wireframing',
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 130,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Design Systems',
                            ),
                          ),
                        ),
                        Container(
                          height: 35,
                          width: 135,
                          decoration: BoxDecoration(
                            color: Color(0xFFe8edf5),
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Interaction Design',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'About',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Ethan is a product designer with over 5 years of experience in creating user-centered designs, He specializes in IJI/UX design, user research, and prototyping. Ethan is passionate about solving complex problems and creating intuitive and engaging user experiences.'
                  ),
                ),
                SizedBox(height: 20,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 0,),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFe8edf5),
                            ),
                            child: Icon(
                              Icons.mail_outline,
                            ),
                          ),
                          title: Text(
                            'ethan.carter@email.com'
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFe8edf5),
                            ),
                            child: Icon(
                              Icons.phone_outlined,
                            ),
                          ),
                          title: Text(
                              '(555)123-4567'
                          ),
                        ),
                        ListTile(
                          leading: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xFFe8edf5),
                            ),
                            child: Icon(
                              Icons.image_not_supported_sharp
                            ),
                          ),
                          title: Text(
                              'linkdin.com/in/ethancarter'
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                  Icons.home_filled,
              ),
              label: ''
            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.search,
                ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: '',
            ),
          ]
        )
      ),
    );
  }
}
