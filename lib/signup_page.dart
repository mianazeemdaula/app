import 'package:app/contacts_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF976FD8),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email Id',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      primary: Color(0xFF976FD8),
                    ),
                    onPressed: () {
                      Route r = MaterialPageRoute(builder: (x) {
                        return const ContactsPage();
                      });
                      Navigator.push(context, r);
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account"),
                    const SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Signin?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
