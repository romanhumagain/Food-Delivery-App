import 'package:flutter/material.dart';

class MyDescription extends StatelessWidget {
  const MyDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            border: Border.all(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text(
                  "\$0.99",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                Text(
                  "Delivery Fee",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "15-30 min",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                Text(
                  "Delivery Time",
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
