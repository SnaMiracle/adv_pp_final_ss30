import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthScreen extends StatefulWidget {
  final bool isLogin;
  AuthScreen({required this.isLogin});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String? _errorMessage;

  void _submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    _formKey.currentState?.save();

    final url = widget.isLogin
        ? 'http://127.0.0.1:8000/auth/token/login/'
        : 'http://127.0.0.1:8000/auth/users/';

    final body = widget.isLogin
        ? {'password': _password, 'email': _email}
        : {'password': _password, 'email': _email, 're_password': _password};

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(body),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = json.decode(response.body);
        if (widget.isLogin) {
          print("Token: ${data['auth_token']}");
          Navigator.of(context).pushReplacementNamed('/home');
        } else {
          print("Signup successful!");
          Navigator.of(context).pushReplacementNamed('/login');
        }
      } else {
        final errorData = json.decode(response.body);
        setState(() {
          _errorMessage = errorData['non_field_errors']?.join(', ') ??
              errorData['email']?.join(', ') ??
              errorData['password']?.join(', ');
        });
      }
    } catch (e) {
      setState(() {
        _errorMessage = "An error occurred. Please try again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isLogin ? 'Login' : 'Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              if (_errorMessage != null)
                Text(
                  _errorMessage!,
                  style: const TextStyle(color: Colors.red),
                ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) => _email = value!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                onSaved: (value) => _password = value!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submit,
                child: Text(widget.isLogin ? 'Login' : 'Signup'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx) => AuthScreen(isLogin: !widget.isLogin),
                  ));
                },
                child: Text(widget.isLogin
                    ? 'Don\'t have an account? Signup'
                    : 'Already have an account? Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
