import 'package:flutter/material.dart';
import 'package:simple_api_json_placeholder_flutter/controllers/login_controller.dart';
import 'package:simple_api_json_placeholder_flutter/widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  final LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: MediaQuery.of(context).size.width * 0.28,
            ),
            CustomTextFieldWidget(
                onChanged: _controller.setLogin, label: 'Login'),
            const SizedBox(height: 30),
            CustomTextFieldWidget(
              onChanged: _controller.setPassword,
              label: 'Senha',
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.auth().then(
                  (value) {
                    if (value) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login ou senha inválidos'),
                        ),
                      );
                    }
                  },
                );
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
