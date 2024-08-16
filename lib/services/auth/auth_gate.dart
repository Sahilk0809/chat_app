import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../view/screens/home_screen.dart';
import 'login_or_register.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user logged in
          if(snapshot.hasData){
            return HomeScreen();
          }
          // not logged in
          else{
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
