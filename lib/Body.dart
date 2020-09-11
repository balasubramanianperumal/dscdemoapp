import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'KConstants.dart';
import 'aboutUs.dart';
import 'Home.dart';

const apiUrl = 'https://wayhike.com/dsc/demo_app_api.php';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  bool home = false;
  bool about = false;

  pageContent() {
    if (home) {
      //print('this is home');
      return Home();
    } else if (about) {
      //print('this is about');
      return About();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8382FF),
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text(
                'Demo DSC App',
                style: KTextStyle,
              ),
              padding: EdgeInsets.fromLTRB(20, 108, 131, 21),
              decoration: BoxDecoration(
                color: Color(0xFF8382FF),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'Home',
                      style: KTextStyle.copyWith(color: Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        about = false;
                        home = true;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info,
                      size: 25.0,
                      color: Colors.black,
                    ),
                    title: Text(
                      'About Us',
                      style: KTextStyle.copyWith(color: Colors.black),
                    ),
                    onTap: () {
                      setState(() {
                        home = false;
                        about = true;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.width/15,
              color: Color(0xFF8382FF),
              child:Center(child: Text('Powered by Google Developers',style: KTextStyle.copyWith(fontSize: 12.5,fontWeight: FontWeight.w700),),),
            ),
          ],
        ),
      ),
      body: pageContent() != null ? pageContent(): Container(
        child: Center(
          child: Image(
            image: AssetImage('Images/DSCLogo.png'),
          ),
        ),
      ),
    );
  }
}
