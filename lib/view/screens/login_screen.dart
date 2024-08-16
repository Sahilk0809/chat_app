import 'package:chat_app/components/button.dart';
import 'package:chat_app/components/text_field.dart';
import 'package:flutter/material.dart';

import '../../services/auth/auth_service.dart';

class LoginScreen extends StatelessWidget {
  final _txtEmail = TextEditingController();
  final _txtPassword = TextEditingController();
  final void Function()? onTap;

  LoginScreen({super.key, required this.onTap});

  void login(BuildContext context) async {
    // auth service
    final authService = AuthService();

    // login
    try {
      await authService.signInWithEmailPassword(
          _txtEmail.text, _txtPassword.text);
    }
    // exception
    catch (e) {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Invalid password or Email'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          SizedBox(
            height: height * 0.05,
          ),

          // welcome back message
          Text(
            'Welcome Back, you\'ve been missed!',
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: height * 0.025,
          ),

          // email textField
          MyTextField(
            hintText: 'Email',
            obscureText: false,
            controller: _txtEmail,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          MyTextField(
            hintText: 'Password',
            obscureText: true,
            controller: _txtPassword,
          ),
          SizedBox(
            height: height * 0.025,
          ),

          // login button
          MyButton(
            text: 'Login',
            onTap: () => login(context),
          ),
          SizedBox(
            height: height * 0.025,
          ),

          // register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a remember? ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Register now',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
