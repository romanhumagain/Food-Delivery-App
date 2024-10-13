import 'package:flutter/material.dart';

class MyFoodTile extends StatelessWidget {
  final String name;
  final String description;
  final String imageUrl;
  final double price;


  MyFoodTile(
      {super.key,
      required this.name,
      required this.description,
      required this.imageUrl,
      required this.price,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 17, fontWeight: FontWeight.w600)),
                    Text('\$'+ price.toString(), style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 15, fontWeight: FontWeight.w500)),
                    Text(description, style: TextStyle(color: Theme.of(context).colorScheme.primary, fontSize: 15, fontWeight: FontWeight.w400)),
                  ],
                ),
              ),
              SizedBox(width: 6,),
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
