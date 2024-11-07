import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscurePassword = true;
  bool _acceptTerms = false;

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
            Text('Create an Account', style: TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            // First Name Field
            _buildInputField(Icons.person_outline, 'First Name'),
            SizedBox(height: 16),
            // Last Name Field
            _buildInputField(Icons.person_outline, 'Last Name'),
            SizedBox(height: 16),
            // Email Field
            _buildInputField(Icons.email_outlined, 'Email'),
            SizedBox(height: 16),
            // Password Field
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
            Row(
              children: [
                Checkbox(
                  value: _acceptTerms,
                  onChanged: (bool? value) {
                    setState(() {
                      _acceptTerms = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: 'By continuing you accept our ',
                      style: TextStyle(color: Colors.grey),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                        ),
                        TextSpan(text: ' and '),
                        TextSpan(
                          text: 'Term of Use',
                          style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Register Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bluetooth'); // Navigate to Bluetooth page
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: Text('Register', style: TextStyle(color: Colors.white)),
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
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login'); // Navigate to Login page
                    },
                    child: Text('Login', style: TextStyle(color: Colors.purple, decoration: TextDecoration.underline)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(IconData icon, String hintText) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.grey),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
        ),
      ),
    );
  }
}
