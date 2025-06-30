import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, top: 2),
            child: Icon(
              Icons.settings_outlined,
              size: 24,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(height: 5,),
            Text(
              'Welcome to Our App',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            // SizedBox(height: 5,),
            Text(
              'Explore the features and information we offer.Stay updated with the latest news and insights',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16
              ),
            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'App Highlights',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFe8edf5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.explore_outlined,
                ),
              ),
              title: Text(
                  'Explore'
              ),
              subtitle: Text(
                'Discover new content and features',
                style: TextStyle(
                    color: Color(0xFFacbfd2)
                ),
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFe8edf5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.mail_outline_outlined,
                ),
              ),
              title: Text(
                  'Contact'
              ),
              subtitle: Text(
                'Get in touch with us',
                style: TextStyle(
                    color: Color(0xFFacbfd2)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
