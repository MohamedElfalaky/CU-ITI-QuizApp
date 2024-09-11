import 'package:cu_iti_quizapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/app_backgroun_image.jpg'))),
        child: Column(
          children: [
            Spacer(),
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                'assets/app_logo.png',
              ),
            ),
            Text(
              'Quiz App',
              style: TextStyle(fontSize: 30),
            ),
            Spacer(),
            SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const LoginScreen(),
                          ),
                        );
                      },
                      child: Text('Go to login screen')),
                )),
          ],
        ),
      ),
    );
  }
}
