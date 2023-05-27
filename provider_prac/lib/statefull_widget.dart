import 'package:flutter/material.dart';


class StateFulWidget extends StatefulWidget {
  const StateFulWidget({Key? key}) : super(key: key);

  @override
  State<StateFulWidget> createState() => _StateFulWidgetState();
}

  int count = 0;
class _StateFulWidgetState extends State<StateFulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('StateFull Widget'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Center(
              child: Text(count.toString() , style: TextStyle(fontSize: 50),),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count);
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
