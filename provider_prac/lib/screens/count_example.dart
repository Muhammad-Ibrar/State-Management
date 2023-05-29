import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_prac/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({Key? key}) : super(key: key);

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    // TODO: implement initState
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      countProvider.setCount();
    });
  }
  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context , listen: false);
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Example'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer<CountProvider>(builder: (context , value , child){
          print('Only this widget is build');
          return Text(value.count.toString() ,
            style: TextStyle(fontSize: 50),
          );
        })
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
