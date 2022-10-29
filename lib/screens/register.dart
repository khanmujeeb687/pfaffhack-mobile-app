import 'package:flutter/material.dart';
import 'package:pfaffhack/components/button.dart';
import 'package:pfaffhack/screens/additional_details.dart';
import 'package:pfaffhack/screens/home_screen_kid.dart';
import 'package:pfaffhack/screens/home_screen_mid.dart';
import 'package:pfaffhack/screens/home_screen_old.dart';
import 'package:pfaffhack/screens/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterState();
}

class _RegisterState extends State<RegisterScreen> {
  String email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (a) {
                  email = a;
                },
                decoration: const InputDecoration(hintText: "Email Id"),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Password"),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(hintText: "Confirm Password"),
              ),
              const SizedBox(
                height: 40,
              ),
              const TextField(
                decoration: InputDecoration(hintText: "Enter Unique ID"),
              ),
              const SizedBox(
                height: 40,
              ),
              Button(
                  title: "Continue",
                  onTap: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) {
                        Widget nextScreen = const RegisterScreen();
                        if (email.isNotEmpty) {
                          if (email.toLowerCase().contains("mid")) {
                            nextScreen =
                                const AdditionalDetailsScreen(isMid: true);
                          } else if (email.toLowerCase().contains("kid")) {
                            nextScreen = const HomeScreenKid();
                          } else if (email.toLowerCase().contains("fighter")) {
                            nextScreen =
                                const AdditionalDetailsScreen(isOld: true);
                          }
                        }
                        return nextScreen;
                      }))),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Already a user? ',
                  ),
                  InkWell(
                    onTap: () => Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (_) => LoginScreen(title: "Pfaff Hack"))),
                    child: const Text(
                      'Log In',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
