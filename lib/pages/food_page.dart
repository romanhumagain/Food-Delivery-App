import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/models/food_models.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({super.key, required this.food}) {
    for (Addon addon in food.availableAddons) {
      selectedAddons[addon] = false;
    }
  }

  // initialize the selected addons to be false

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  widget.food.imagePath,
                  height: 270,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.food.name,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            Text("\$ ${widget.food.price.toString()}",
                style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.inversePrimary)),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.food.description,
              style: TextStyle(
                  fontSize: 18, color: Theme.of(context).colorScheme.primary),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'Add ons',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Theme.of(context).colorScheme.primary),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: ListView.builder(
                    itemCount: widget.food.availableAddons.length,
                    itemBuilder: (context, index) {
                      Addon addon = widget.food.availableAddons[index];

                      return CheckboxListTile(
                          title: Text(
                            addon.name,
                            style: TextStyle(
                                fontSize: 18,
                                color: Theme.of(context)
                                    .colorScheme
                                    .inversePrimary),
                          ),
                          subtitle: Text(
                            addon.price.toString(),
                            style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).colorScheme.primary),
                          ),
                          value: widget.selectedAddons[addon],
                          onChanged: (value) {
                            setState(() {
                              widget.selectedAddons[addon] = value!;
                            });
                          });
                    }),
              ),
            ),
            MyButton(text: "Add to Card", onTap: () {})
          ],
        ),
      ),
    );
  }
}
