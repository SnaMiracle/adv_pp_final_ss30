// import 'package:ecom_ss30/clipper/cliper.dart';
// import 'package:ecom_ss30/clipper/cliper2.dart';
// import 'package:ecom_ss30/screens/signup_screen.dart';
// import 'package:flutter/material.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var emailController = TextEditingController();
//     var passwordController = TextEditingController();
//
//     Widget _builderEmail(){
//       return Container(
//         height: 50,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               offset: const Offset(3, 3),
//               blurRadius: 6,
//               color: Colors.grey.shade400,
//             )
//           ]
//         ),
//         child: TextFormField(
//           validator: (value) {
//             if(value == null || value.isEmpty) {
//               return "Enter your email";
//             }
//           },
//           controller: emailController,
//           decoration: const InputDecoration(
//             border: InputBorder.none,
//             contentPadding: EdgeInsets.only(top: 14),
//             prefixIcon: Icon(Icons.email_outlined
//             ),
//             hintText: 'Enter your email.'
//           ),
//         ),
//       );
//     }
//
//     Widget _builderPassword(){
//       return Container(
//         height: 50,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             boxShadow: [
//               BoxShadow(
//                 offset: const Offset(3, 3),
//                 blurRadius: 6,
//                 color: Colors.grey.shade400,
//               )
//             ]
//         ),
//         child: TextFormField(
//           validator: (value) {
//             if(value == null || value.isEmpty) {
//               return "Enter your password";
//             }
//           },
//           controller: passwordController,
//           decoration: const InputDecoration(
//               border: InputBorder.none,
//               contentPadding: EdgeInsets.only(top: 14),
//               prefixIcon: Icon(Icons.lock_outline_rounded
//               ),
//               hintText: 'Enter your password.'
//           ),
//         ),
//       );
//     }
//
//
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
//                       colors: [
//                         Color(0xfff7b858),
//                         Color(0xfffca148),
//                       ]
//                     ),
//                   ),
//                   child: const Row(
//                     children: [
//                       SizedBox(width: 20),
//                       InkWell(
//                         onTap: () {
//                           Navigator.pop(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
//                         },
//                         child: Text('LOGIN', style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                           fontSize: 17,
//                           color: Colors.white
//                         ),),
//                       ),
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
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400,
//                         color: Colors.black
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.pop(context, MaterialPageRoute(builder: (_) => SignUpScreen()));
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






import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        automaticallyImplyLeading: false, // Disable the back arrow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image placeholder at the top
            Image.asset(
              'assets/images/logo_dark.png', // Add your image here
              width: 200,  // Set the width of the image
              height: 100, // Set the height of the image
            ),
            const SizedBox(height: 50),  // Add space between the image and email field

            // Email TextField
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 30),

            // Password TextField
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),

            // Login Button
            ElevatedButton(
              onPressed: () {
                // Handle Login
                Get.toNamed('/'); // After successful login, go to product list
              },
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {
                Get.toNamed('/signup'); // Navigate to the signup page
              },
              child: const Text("Don't have an account? Sign up"),
            ),
          ],
        ),
      ),
    );
  }
}
