import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 180,
              child: Image.asset('images/buddy1.png'),
            ),
            Center(
              child: Text(
                'Text Me',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 36,
                    color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5,
              color: const Color.fromARGB(255, 247, 138, 15),
              borderRadius: BorderRadius.circular(10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'signin_screen');
                },
                minWidth: 200,
                height: 42,
                child: Text(
                  'Sign In',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Material(
              elevation: 5,
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'registration_screen');
                },
                minWidth: 200,
                height: 42,
                child: Text(
                  'Register',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
