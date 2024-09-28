import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  // final Icon icon;
  final Function()? onTap;

  const MyButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Container(
          padding: EdgeInsets.all(11.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12),

          ),
          child: Center(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.login, color: Theme.of(context).colorScheme.inversePrimary ,),
                SizedBox(width: 5),
                Text(text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Theme.of(context).colorScheme.inversePrimary),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
