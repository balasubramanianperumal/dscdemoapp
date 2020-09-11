import 'package:demo_dsc_test/KConstants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  static String id = 'About';

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Image(
              width: MediaQuery.of(context).size.width,
              image: AssetImage(
                'Images/DSCLogo.png',
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(40, 15, 25, 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
              height: 150,
              child: Text(
                'Developer Students Club is a Community where everyone\n'
                    'is Welcome.We help students bridge the gap between\n'
                    'the theory and practice and grow their knowledge by\n'
                    'providing peer to peer environment,by providing workshops study jams and building solutions\n'
                    'for local developers.Developers student clubs is a\n'
                    ' program supported by Google Developers.',
                softWrap: true,
                style: KTextStyle.copyWith(
                  fontSize: 10.5,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 100,
              height: 35.0,
              decoration: BoxDecoration(
//                color: Color(0xFF8382FF),
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Color(0xFF8382FF),
                  width: 2.5,
                )
              ),
              child: Center(
                child: InkWell(
                  child: Text("visit dscsastra.com",style: KTextStyle.copyWith(color: Color(0xFF8382FF)),),
                  onTap: () async {
                    if (await canLaunch("https://dscsastra.com/")) {
                      await launch("https://dscsastra.com/");
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
