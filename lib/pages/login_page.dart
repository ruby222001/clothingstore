import 'package:flutter/material.dart';
import 'package:shoppingapp/models/my_button.dart';
import 'package:shoppingapp/models/mytextfield.dart';

class LoginPage extends StatelessWidget {
   LoginPage({super.key});
  final usernameController = TextEditingController();
    final passwordController = TextEditingController();

void signUserIn(){

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(Icons.lock,
              size: 100,
              ),
                            const SizedBox(height: 50),

MyTextField(controller: usernameController, hinttext: 'Username', obscuretext: false),
const SizedBox(height: 10),

MyTextField(controller: passwordController, hinttext: 'Password', obscuretext: true),
const SizedBox(height: 10),

Padding(
  padding: const EdgeInsets.symmetric(horizontal:25.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('Forgot Password?',
      style: TextStyle(color:Colors.grey[600])),
    ],
  ),
),
const SizedBox(height: 25),
 MyButton(onTap: signUserIn,
),
const SizedBox(height: 50),

Padding(
        padding: const EdgeInsets.symmetric(horizontal:25.0),
  child: Row(
    children: [
      Expanded(
        child: Divider(
          thickness:0.5 ,
          color: Colors.grey[400],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal:10.0),
        child: Text('Or continue with',
        style: TextStyle(color: Colors.grey[700]),),
      ),
      Expanded(
        child: Divider(
          thickness:0.5 ,
          color: Colors.grey[400],
        ),
      ),
    ],
  ),
)
            ],
          ),
        ),
      )
    );
  }
}