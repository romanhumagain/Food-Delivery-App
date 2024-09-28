import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/components/my_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo
            Icon(Icons.lock_open_rounded,
                size: 120, color: Theme.of(context).colorScheme.inversePrimary),
            SizedBox(height: 15),
            // Text
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            SizedBox(
              height: 35,
            ),

            MyTextfield(
                controller: emailController,
                hintText: "Email",
                isObscureText: false),
            SizedBox(
              height: 15,
            ),

            MyTextfield(
                controller: passwordController,
                hintText: "Password",
                isObscureText: true),
            SizedBox(
              height: 8,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 28.0),
                  child: Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                )),
            SizedBox(
              height: 15,
            ),
            MyButton(
              text: "Sign in",
              onTap: () {},
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account ? ",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 17),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Register now!",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
