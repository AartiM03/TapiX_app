import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey there,', style: TextStyle(color: Colors.black, fontSize: 24)),
            Text('Welcome Back', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email_outlined, color: Colors.grey),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
              child: TextField(
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: Colors.grey),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: IconButton(
                    icon: Icon(_obscurePassword ? Icons.visibility_off : Icons.visibility, color: Colors.grey),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text('Forgot your password?', style: TextStyle(color: Colors.grey)),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/bluetooth'); // Navigate to Bluetooth page
                },
                icon: Icon(Icons.login, color: Colors.white),
                label: Text('Login'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Expanded(child: Divider()),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 8.0), child: Text('Or')),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(icon: Icon(Icons.g_translate, color: Colors.black), onPressed: () {}),
                SizedBox(width: 16),
                IconButton(icon: Icon(Icons.facebook, color: Colors.blue), onPressed: () {}),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account yet? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup'); // Navigate to Signup page
                    },
                    child: Text('Register', style: TextStyle(color: Colors.purple, decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
