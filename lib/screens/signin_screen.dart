import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = "";
  bool _issignedin = false;
  bool _obsecurepassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('sign in')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //todo 5
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
              labelText: 'Nama Pengguna',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          //todo 6
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "Kata Sandi",
              border: OutlineInputBorder(),
              errorText: _errorText.isNotEmpty ? _errorText : null,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _obsecurepassword = !_obsecurepassword;
                  });
                },
                icon: Icon(
                  _obsecurepassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
            obscureText: _obsecurepassword,
          ),
          //todo 7
          const SizedBox(height: 20),
          ElevatedButton(onPressed: () {}, child: const Text('sign in')),
          //todo 8
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'Belum punya akun? ',
              style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
              children: [
                TextSpan(
                  text: 'Daftar di sini.',
                  style: const TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
