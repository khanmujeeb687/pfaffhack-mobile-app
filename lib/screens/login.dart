import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';
import 'package:pfaffhack/screens/home_screen_kid.dart';
import 'package:pfaffhack/screens/home_screen_mid.dart';
import 'package:pfaffhack/screens/home_screen_old.dart';
import 'package:pfaffhack/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.title});
  final String title;

  @override
  State<LoginScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginScreen> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(
                  title: "Log In as Youngster",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const HomeScreenKid()));
                  }),

              const SizedBox(
                height: 20,
              ),
              Button(
                  title: "Log In as Fighter",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const HomeScreenOld()));
                  }),

              const SizedBox(
                height: 20,
              ),
              Button(
                  title: "Log In as Artist",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const HomeScreenMid()));
                  }),

              const SizedBox(
                height: 20,
              ),

              // const Text(
              //   'Login',
              //   style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              // ),
              // const SizedBox(
              //   height: 40,
              // ),
              // TextField(
              //   onChanged: (q) {
              //     email = q;
              //   },
              //   decoration: InputDecoration(hintText: "Email Id"),
              // ),
              // const SizedBox(
              //   height: 40,
              // ),
              // TextField(
              //   onChanged: (q) {
              //     password = q;
              //   },
              //   obscureText: true,
              //   decoration: InputDecoration(hintText: "Password"),
              // ),
              // const SizedBox(
              //   height: 40,
              // ),
              // Button(
              //     title: "Log In",
              //     onTap: () {
              //       if (email.isNotEmpty && password.isNotEmpty) {
              //         Widget? nextScreen;
              //         if (email.toLowerCase().contains("mid")) {
              //           nextScreen = HomeScreenMid();
              //         } else if (email.toLowerCase().contains("kid")) {
              //           nextScreen = HomeScreenKid();
              //         } else if (email.toLowerCase().contains("fighter")) {
              //           nextScreen = HomeScreenOld();
              //         }
              //         Navigator.pushReplacement(context,
              //             MaterialPageRoute(builder: (_) => nextScreen!));
              //       }
              //     }),
              // const SizedBox(
              //   height: 40,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     const Text(
              //       'Not a user? ',
              //     ),
              //     InkWell(
              //       onTap: () => Navigator.pushReplacement(context,
              //           MaterialPageRoute(builder: (_) => RegisterScreen())),
              //       child: const Text(
              //         'Sign Up',
              //         style: TextStyle(color: Colors.blue),
              //       ),
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
