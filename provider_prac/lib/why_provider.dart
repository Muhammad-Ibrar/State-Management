import 'package:flutter/material.dart';
import 'dart:async';
class ProviderScreen extends StatefulWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  State<ProviderScreen> createState() => _ProviderScreenState();
}


class _ProviderScreenState extends State<ProviderScreen> {
  int count = 0;
  @override
  void initState(){
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      count++;
      // print(count);
      setState(() {

      });
    });
  }
  @override
  Widget build(BuildContext context) {
    print('build'+ count.toString());
    return Scaffold(
      appBar: AppBar(
        title:const Text('ProviderScreen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(DateTime.now().hour.toString()+ ":" + DateTime.now().minute.toString()+ ":" + DateTime.now().second.toString(),
              style: TextStyle(fontSize: 50),
            ),
          ),
         Center(
            child: Text(count.toString() ,
              style: TextStyle(fontSize: 50),
            ),
          ),

      ],
      ),
    );
  }
}
