import 'package:flutter/material.dart';
import 'package:LOGIN_SIGNIN/presentation/screens/signin_screen.dart';
import 'package:LOGIN_SIGNIN/presentation/widgets/custom_scaffold.dart';
import 'package:LOGIN_SIGNIN/presentation/screens/signup_screen.dart';


void main() {
  runApp(const MyApp());
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScaffold(
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 0,
                  horizontal: 40.0,
                ),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.white,
                      ),
                      children: [
                        TextSpan(
                          text: 'Welcome to',
                        ),
                        TextSpan(
                          text: 'Anbessa Fit!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.orange,
                          ),
                        ),
                    
                        TextSpan(
                          text:
                              '\n Get fit,look great and Elevate your fitness game with Anbessa Fit!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      WelcomeButton(
                        buttonText: 'Sign up',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUpScreen()),
                          );
                        },
                        color: Colors.transparent,
                        textColor:Colors.orange,
                      ),
                      const SizedBox(width: 8.0),
                      WelcomeButton(
                        buttonText: 'Sign in',
                       onTap: () {
                                 Navigator.push(
                                   context,
                                    MaterialPageRoute(builder: (context) => SignInScreen()),
                                );
                              },
                        color: Colors.orange,
                        textColor:Colors.black,

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({
    Key? key,
    required this.buttonText,
    required this.onTap,
    required this.color, 
    required this.textColor,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onTap;
  final Color color;
  final Color textColor;
 

    @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: WelcomeScreen(),
    );
  }
}