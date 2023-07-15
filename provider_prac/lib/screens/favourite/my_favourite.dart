import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/favourite_provider.dart';

class FavouriteItemScreen extends StatefulWidget {
  const FavouriteItemScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteItemScreen> createState() => _FavouriteItemScreenState();
}

class _FavouriteItemScreenState extends State<FavouriteItemScreen> {
  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
    return Scaffold(
        appBar: AppBar(
          title:const Text('Favourite App'),
          centerTitle: true,
          actions:const [
             Icon(Icons.favorite),

            SizedBox(width: 20,)
          ],
        ),
        body: Column(
          children: [

            Expanded(
                child:  ListView.builder(
                    itemCount: favouriteProvider.selectedItem.length,
                    itemBuilder: (context , index){
                      return Consumer<FavouriteItemProvider>(builder: (context , value , child){
                        return ListTile(

                          onTap: (){
                            if(value.selectedItem.contains(index)){
                              value.removeItem(index);
                            }
                            else {
                              value.addItem(index);
                            }


                          },

                          title: Text('Item '+index.toString()),
                          trailing: Icon(
                              value.selectedItem.contains(index) ?Icons.favorite: Icons.favorite_border),
                        );
                      });
                    }
                )
            )


          ],
        )
    );
  }
}
