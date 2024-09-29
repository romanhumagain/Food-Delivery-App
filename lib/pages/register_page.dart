import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/login_page.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
              "Lets create an account for you !",
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
              isObscureText: false,

            ),
            SizedBox(
              height: 15,
            ),

            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              isObscureText: true,
              togglePasswordShowIcon: true,
            ),
            SizedBox(
              height: 15,
            ),

            MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirm Password",
                isObscureText: true,
              togglePasswordShowIcon: true,),

            SizedBox(
              height: 15,
            ),
            MyButton(
              text: "Sign up",
              onTap: () {},
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ? ",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 17),
                ),
                SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login here !",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
