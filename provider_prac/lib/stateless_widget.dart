import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  int count = 10;
  @override
  Widget build(BuildContext context) {
    print('Build');
    return Scaffold(
      appBar: AppBar(
        title:const Text('Provider Tutorials'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Center(
                child: Text(count.toString(), style: TextStyle(fontSize: 50),),
              )
          ),

        ],

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          count++;
          print(count);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
