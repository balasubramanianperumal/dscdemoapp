import 'package:demo_dsc_test/KConstants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:demo_dsc_test/network.dart';
class Home extends StatefulWidget {
  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<dynamic> dataList = [];

  Future<dynamic> dscData() async {
    Data netWorkHelper = Data(apiUrl);
    var dscData = netWorkHelper.getData();
    return dscData;
  }

  void updateValue() async {
    var data = await dscData();
    if (data == null) {
      print('Not having data');
    }
    setState(() {
      dataList = data['event_titles'];
    });
  }

  @override
  void initState() {
    updateValue();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dataList.length,
        itemBuilder: (context,index){
        return Card(
            elevation: 3.5,
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('${dataList[index]}',
                  style: KTextStyle.copyWith(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
        );
    });
  }
}
