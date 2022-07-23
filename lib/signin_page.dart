import 'package:app/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF976FD8),
                  ),
                ),
                Image.asset(
                  'assets/images/01.jpg',
                  width: 120,
                  fit: BoxFit.cover,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Username',
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      primary: const Color(0xFF976FD8),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text('Forget Password?'),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account"),
                    SizedBox(width: 5),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return SignupPage();
                        }));
                      },
                      child: Text(
                        'Signup?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
