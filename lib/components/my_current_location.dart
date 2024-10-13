import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context){
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Your Location"),
      content: TextField(
        decoration: InputDecoration(
          hintText: "Search address....",
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)
        ),
      ),
      actions: [
        CupertinoButton(child: Text("Cancel"), onPressed: ()=>{Navigator.pop(context)}),
        CupertinoButton(child: Text("Search"), onPressed: (){})

      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text("Deliver Now", style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 16),),
          GestureDetector(
            onTap: ()=> openLocationSearchBox(context),
            child: Row(
              children: const [
                Text("Kathmandu Durbarg Marg", style: TextStyle(fontSize: 17),),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          )
        ],
      ),
    );
  }
}
