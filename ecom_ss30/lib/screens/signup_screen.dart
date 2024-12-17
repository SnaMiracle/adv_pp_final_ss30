// import 'package:ecom_ss30/clipper/cliper.dart';
// import 'package:ecom_ss30/clipper/cliper2.dart';
// import 'package:flutter/material.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var confirmPassword = TextEditingController();
//   var nameController = TextEditingController();
//
//   Widget _builderName(){
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(3, 3),
//               blurRadius: 6,
//               color: Colors.grey.shade400,
//             )
//           ]
//       ),
//       child: TextFormField(
//         validator: (value) {
//           if(value == null || value.isEmpty) {
//             return "Enter your email";
//           }
//         },
//         controller: nameController,
//         decoration: const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14),
//             prefixIcon: Icon(Icons.email_outlined
//             ),
//             hintText: 'Enter your email.'
//         ),
//       ),
//     );
//   }
//
//   Widget _builderEmail(){
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(3, 3),
//               blurRadius: 6,
//               color: Colors.grey.shade400,
//             )
//           ]
//       ),
//       child: TextFormField(
//         validator: (value) {
//           if(value == null || value.isEmpty) {
//             return "Enter your email";
//           }
//         },
//         controller: emailController,
//         decoration: const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14),
//             prefixIcon: Icon(Icons.email_outlined
//             ),
//             hintText: 'Enter your email.'
//         ),
//       ),
//     );
//   }
//
//   Widget _builderPassword(){
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(3, 3),
//               blurRadius: 6,
//               color: Colors.grey.shade400,
//             )
//           ]
//       ),
//       child: TextFormField(
//         validator: (value) {
//           if(value == null || value.isEmpty) {
//             return "Enter your email";
//           }
//         },
//         controller: passwordController,
//         decoration: const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14),
//             prefixIcon: Icon(Icons.email_outlined
//             ),
//             hintText: 'Enter your email.'
//         ),
//       ),
//     );
//   }
//
//   Widget _builderconfirmPassword(){
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(3, 3),
//               blurRadius: 6,
//               color: Colors.grey.shade400,
//             )
//           ]
//       ),
//       child: TextFormField(
//         validator: (value) {
//           if(value == null || value.isEmpty) {
//             return "Enter your email";
//           }
//         },
//         controller: confirmPassword,
//         decoration: const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14),
//             prefixIcon: Icon(Icons.email_outlined
//             ),
//             hintText: 'Enter your email.'
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               CustomPaint(
//                 size: Size(MediaQuery.of(context).size.width,300),
//                 painter: RPSCustomPainter(),
//               ),
//               Positioned(
//                 top: 16,
//                 right: -5,
//                 child: CustomPaint(
//                   size: Size(MediaQuery.of(context).size.width,300),
//                   painter: PSCustomPainter(),
//                 ),
//               ),
//               const Positioned(
//                 top: 220,
//                 left: 30,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Login',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w800,
//                         fontSize: 26,
//                       ),
//                     ),
//                     SizedBox(height: 10),
//                     Text('Please sign in to continue.',
//                       style: TextStyle(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 17,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 28),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 const SizedBox(height: 25),
//                 _builderEmail(),
//                 const SizedBox(height: 20),
//                 _builderPassword(),
//                 const SizedBox(height: 20),
//                 const Text('FORGET', style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: Color(0xffFCA148),
//                 ),),
//                 const SizedBox(height: 20),
//                 Container(
//                   height: 50,
//                   width: 150,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     gradient: const LinearGradient(
//                         colors: [
//                           Color(0xfff7b858),
//                           Color(0xfffca148),
//                         ]
//                     ),
//                   ),
//                   child: const Row(
//                     children: [
//                       SizedBox(width: 20),
//                       Text('LOGIN', style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 17,
//                           color: Colors.white
//                       ),),
//                       SizedBox(width: 20),
//                       Icon(Icons.arrow_forward, color: Colors.white),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 300),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Text("Don't have an account?",
//                       style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w400,
//                           color: Colors.black
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context, MaterialPageRoute(builder: (_) => const SignUpScreen()));
//                       },
//                       child: const Text("Sign Up",
//                         style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w400,
//                             color: Color(0xfffca148)
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }



import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _rePassword = '';
  bool _isLoading = false;
  String? _errorMessage;

  // Function to submit the form
  void _submit() async {
    final isValid = _formKey.currentState?.validate() ?? false;
    if (!isValid) return;

    _formKey.currentState?.save(); // Save the form state (email, password)

    setState(() {
      _isLoading = true; // Start loading
    });

    const url = 'http://127.0.0.1:8000/auth/users/'; // Django API signup endpoint

    final body = {
      'email': _email,
      'password': _password,
      're_password': _rePassword, // You must confirm password in signup
    };

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(body),
      );

      setState(() {
        _isLoading = false; // Stop loading once we have the response
      });

      if (response.statusCode == 201) {
        // Signup success
        final data = json.decode(response.body);
        print("User Created Successfully: ${data}");
        // Navigate to login screen after successful signup
        Navigator.of(context).pushReplacementNamed('/login');
      } else {
        // Error in response, show error message
        final errorData = json.decode(response.body);
        setState(() {
          _errorMessage = errorData['non_field_errors']?.join(', ') ??
              errorData['email']?.join(', ') ??
              errorData['password']?.join(', ') ??
              'Unknown error occurred';
        });
      }
    } catch (e) {
      setState(() {
        _isLoading = false;
        _errorMessage = "An error occurred. Please try again.";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Display error message if any
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
              TextFormField(
                decoration: const InputDecoration(labelText: 'Confirm Password'),
                obscureText: true,
                onSaved: (value) => _rePassword = value!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              // Submit Button
              ElevatedButton(
                onPressed: _isLoading ? null : _submit, // Disable button when loading
                child: _isLoading
                    ? const CircularProgressIndicator(color: Colors.white) // Loading indicator
                    : const Text('Sign Up'),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login'); // Navigate to login page
                },
                child: const Text('Already have an account? Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
