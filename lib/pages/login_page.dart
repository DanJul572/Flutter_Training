import 'package:flutter/material.dart';
import 'package:zapp/components/custom_text_field.dart';
import 'package:zapp/components/custom_password_field.dart';
import 'package:zapp/components/custom_button.dart';
import 'package:zapp/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextField(
              controller: usernameController,
              labelText: 'Username',
            ),
            const SizedBox(height: 16.0),
            CustomPasswordField(
              controller: passwordController,
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              onPressed: () {
                String username = usernameController.text;
                String password = passwordController.text;

                // Proses login bisa ditambahkan di sini
                if (username == 'user' && password == 'password') {
                  // Contoh sukses login
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                } else {
                  // Contoh gagal login
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Login Failed'),
                  ));
                }
              },
              text: 'Login',
            ),
          ],
        ),
      ),
    );
  }
}
