import 'package:flutter/material.dart';
import '../../components/button.dart';
import '../../components/text_field.dart';
import '../../services/auth/auth_service.dart';

class RegisterScreen extends StatelessWidget {
  final _txtEmail = TextEditingController();
  final _txtPassword = TextEditingController();
  final _txtConfirmPassword = TextEditingController();
  final void Function()? onTap;

  RegisterScreen({super.key, required this.onTap});

  void register(BuildContext context) {
    // get auth service
    final auth = AuthService();

    // passwords match
    if (_txtPassword.text == _txtConfirmPassword.text) {
      try {
        auth.signUpWithEmailPassword(
          _txtEmail.text,
          _txtPassword.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString()),
          ),
        );
      }
    }
    // passwords don't match
    else{
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text('Passwords don\'t match!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
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
            'Let\'s create an account for you',
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
          // password
          MyTextField(
            hintText: 'Password',
            obscureText: true,
            controller: _txtPassword,
          ),
          SizedBox(
            height: height * 0.01,
          ),
          // confirm password
          MyTextField(
            hintText: 'Confirm Password',
            obscureText: true,
            controller: _txtConfirmPassword,
          ),
          SizedBox(
            height: height * 0.025,
          ),

          // login button
          MyButton(
            text: 'Register',
            onTap: () => register(context),
          ),
          SizedBox(
            height: height * 0.025,
          ),

          // register now
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account? ',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(
                  'Login now',
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
