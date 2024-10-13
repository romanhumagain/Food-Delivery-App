import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food_models.dart';

class Resturants extends ChangeNotifier {
  final List<Food> _menu = [
    // for burgers
    Food(
        name: "Classic Cheese Burger",
        description:
            "A timeless burger with a juicy beef patty, topped with melted cheddar cheese. ",
        imagePath: 'assets/images/burgers/burger1.webp',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avacoado', price: 2.99),
        ]),
    Food(
        name: "Bacon Double Cheeseburger",
        description:
            "A juicy double cheeseburger with crispy bacon and melted cheddar cheese.",
        imagePath: 'assets/images/burgers/burger2.jpg',
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Onion Rings', price: 1.49),
        ]),
    Food(
        name: "Spicy Jalapeno Burger",
        description:
            "A burger with spicy jalapenos, pepper jack cheese, and a zesty sauce.",
        imagePath: 'assets/images/burgers/burger3.jpg',
        price: 6.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Jalapenos', price: 0.99),
          Addon(name: 'Guacamole', price: 1.49),
          Addon(name: 'Chipotle Sauce', price: 0.79),
        ]),
    Food(
        name: "BBQ Bacon Burger",
        description:
            "A smoky BBQ burger with bacon, cheddar cheese, and BBQ sauce.",
        imagePath: 'assets/images/burgers/burger4.jpg',
        price: 6.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra BBQ Sauce', price: 0.99),
          Addon(name: 'Fried Egg', price: 1.49),
          Addon(name: 'Coleslaw', price: 0.99),
        ]),
    Food(
        name: "Classic Cheese Burger",
        description:
        "A timeless burger with a juicy beef patty, topped with melted cheddar cheese. ",
        imagePath: 'assets/images/burgers/burger1.webp',
        price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avacoado', price: 2.99),
        ]),
    Food(
        name: "Bacon Double Cheeseburger",
        description:
        "A juicy double cheeseburger with crispy bacon and melted cheddar cheese.",
        imagePath: 'assets/images/burgers/burger2.jpg',
        price: 5.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.99),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Onion Rings', price: 1.49),
        ]),
    Food(
        name: "Spicy Jalapeno Burger",
        description:
        "A burger with spicy jalapenos, pepper jack cheese, and a zesty sauce.",
        imagePath: 'assets/images/burgers/burger3.jpg',
        price: 6.49,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra Jalapenos', price: 0.99),
          Addon(name: 'Guacamole', price: 1.49),
          Addon(name: 'Chipotle Sauce', price: 0.79),
        ]),
    Food(
        name: "BBQ Bacon Burger",
        description:
        "A smoky BBQ burger with bacon, cheddar cheese, and BBQ sauce.",
        imagePath: 'assets/images/burgers/burger4.jpg',
        price: 6.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: 'Extra BBQ Sauce', price: 0.99),
          Addon(name: 'Fried Egg', price: 1.49),
          Addon(name: 'Coleslaw', price: 0.99),
        ]),

    // for salads
    Food(
        name: "Caesar Salad",
        description: "Crisp romaine lettuce, Parmesan cheese, croutons, and Caesar dressing.",
        imagePath: 'assets/images/salads/salads1.webp',
        price: 4.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Grilled Chicken', price: 2.49),
          Addon(name: 'Bacon', price: 1.99),
          Addon(name: 'Avocado', price: 1.49),
        ]
    ),
    Food(
        name: "Greek Salad",
        description: "A Mediterranean salad with cucumber, olives, feta cheese, and red onions.",
        imagePath: 'assets/images/salads/salads2.webp',
        price: 5.49,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra Feta', price: 0.99),
          Addon(name: 'Grilled Chicken', price: 2.49),
          Addon(name: 'Extra Olives', price: 0.99),
        ]
    ),
    Food(
        name: "Cobb Salad",
        description: "A filling salad with grilled chicken, avocado, bacon, hard-boiled eggs, and blue cheese.",
        imagePath: 'assets/images/salads/salads3.webp',
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra Bacon', price: 1.99),
          Addon(name: 'Boiled Egg', price: 0.99),
          Addon(name: 'Ranch Dressing', price: 0.79),
        ]
    ),
    Food(
        name: "Spinach Salad",
        description: "Fresh spinach, mushrooms, red onions, and a warm bacon dressing.",
        imagePath: 'assets/images/salads/salads4.webp',
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Grilled Chicken', price: 2.49),
          Addon(name: 'Goat Cheese', price: 1.49),
          Addon(name: 'Walnuts', price: 0.99),
        ]
    ),

    // for drinks
    Food(
        name: "Coca-Cola",
        description: "Classic Coca-Cola served cold and refreshing.",
        imagePath: 'assets/images/drinks/drinks1.webp',
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon Slice', price: 0.49),
          Addon(name: 'Ice', price: 0.29),
        ]
    ),
    Food(
        name: "Lemonade",
        description: "Freshly squeezed lemonade with a perfect balance of sweet and sour.",
        imagePath: 'assets/images/drinks/drinks2.jpg',
        price: 2.49,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Mint Leaves', price: 0.49),
          Addon(name: 'Extra Ice', price: 0.29),
        ]
    ),
    Food(
        name: "Iced Tea",
        description: "Chilled black tea with a hint of lemon and sugar.",
        imagePath: 'assets/images/drinks/drinks3.webp',
        price: 1.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Lemon Slice', price: 0.49),
          Addon(name: 'Honey', price: 0.49),
        ]
    ),
    Food(
        name: "Orange Juice",
        description: "Freshly squeezed orange juice, full of vitamin C.",
        imagePath: 'assets/images/drinks/drinks4.jpg',
        price: 2.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: 'Pulp', price: 0.49),
          Addon(name: 'Ice', price: 0.29),
        ]
    ),

    // for sides
    Food(
        name: "French Fries",
        description: "Crispy golden fries seasoned to perfection.",
        imagePath: 'assets/images/sides/sides1.webp',
        price: 2.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Ketchup', price: 0.29),
          Addon(name: 'Cheese Sauce', price: 0.99),
        ]
    ),
    Food(
        name: "Onion Rings",
        description: "Crispy onion rings battered and fried to a golden brown.",
        imagePath: 'assets/images/sides/sides2.webp',
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Ranch Dressing', price: 0.49),
          Addon(name: 'BBQ Sauce', price: 0.49),
        ]
    ),
    Food(
        name: "Mozzarella Sticks",
        description: "Golden fried mozzarella sticks served with marinara sauce.",
        imagePath: 'assets/images/sides/sides3.webp',
        price: 4.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Marinara Sauce', price: 0.49),
          Addon(name: 'Ranch Dressing', price: 0.49),
        ]
    ),
    Food(
        name: "Garlic Bread",
        description: "Toasted garlic bread with butter and herbs.",
        imagePath: 'assets/images/sides/sides4.webp',
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Cheese', price: 0.99),
          Addon(name: 'Marinara Sauce', price: 0.49),
        ]
    ),

  ];

  // Getter to expose the menu
  List<Food> get menu => _menu;
}
