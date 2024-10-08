import 'package:cu_iti_quizapp/data/globals.dart';
import 'package:cu_iti_quizapp/screens/category_screen.dart';
import 'package:cu_iti_quizapp/screens/login_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(12),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/app_backgroun_image.jpg'))),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Center(
                child: Text(
                  'Login screen',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Text('user name'),
              TextFormField(
                controller: userNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'User name can not be empty';
                  } else if (value!.length < 3) {
                    return 'Username must be greater than 2 characters';
                  }
                },
                decoration: InputDecoration(
                    hintText: 'please enter username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.blue, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.green, width: 3))),
              ),
              Spacer(),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const CategoryScreen(),
                            ),
                          );
                        }
                      },
                      child: Text('Login'))),
            ],
          ),
        ),
      ),
    );
  }
}
