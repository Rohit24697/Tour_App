// import 'package:flutter/material.dart';
//
// import 'sign_in_page.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({super.key});
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   // State variables declared here
//   bool isMaleSelected = true;
//
//   // for terms and conditions checkbox
//   bool isAccept = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//         /// Top Logo
//         Container(
//         margin: EdgeInsets.only(top: 60),
//         child: Stack(
//           children: [
//             Image.asset('assets/logos/logo.png', width: 220, height: 100),
//
//             Padding(
//               padding: const EdgeInsets.only(top: 75, left: 36),
//               child: Text(
//                 "Enjoy your travelling",
//                 style: TextStyle(fontSize: 15),
//               ),
//             ),
//           ],
//         ),
//       ),
//
//       SizedBox(height: 70),
//
//       /// Title
//       const Text('Sign Up', style: TextStyle(fontSize: 24)),
//
//       const SizedBox(height: 150),
//
//       /// Gender Checkbox field
//       Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           /// for male check box
//           Container(
//             height: 35,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               border: Border.all(
//                 color: Colors.black12,
//                 width: 1,
//                 style: BorderStyle.solid,
//               ),
//             ),
//
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12.0),
//               child: Row(
//                 children: [
//                   Text("Male", style: TextStyle(fontSize: 12)),
//                   SizedBox(width: 70),
//                   Container(
//                     width: 18,
//                     height: 18,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(6),
//                       border: Border.all(
//                         color: Colors.black12,
//                         width: 0.5,
//                       ),
//                       color:
//                       isMaleSelected
//                           ? Colors.red[100]
//                           : Colors.transparent,
//                     ),
//                     child:
//                     isMaleSelected
//                         ? Icon(
//                       Icons.check,
//                       size: 16,
//                       color: Colors.red, // Red checkmark
//                     )
//                         : null,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           /// for female check box
//           Container(
//             height: 35,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               border: Border.all(
//                 color: Colors.black12,
//                 width: 1,
//                 style: BorderStyle.solid,
//               ),
//             ),
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 12.0),
//               child: Row(
//                 children: [
//                   Text("Female", style: TextStyle(fontSize: 12)),
//                   SizedBox(width: 70),
//                   Container(
//                     width: 18,
//                     height: 18,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(6),
//                       border: Border.all(
//                         color: Colors.black12,
//                         width: 0.5,
//                       ),
//                       color:
//                       isMaleSelected
//                           ? Colors.red[100]
//                           : Colors.transparent,
//                     ),
//                     child:
//                     isMaleSelected
//                         ? Icon(
//                       Icons.check,
//                       size: 16,
//                       color: Colors.red, // Red checkmark
//                     )
//                         : null,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//
//       const SizedBox(height: 20),
//
//       /// Password field
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           "Password",
//           style: TextStyle(fontSize: 16, color: Colors.black54),
//         ),
//       ),
//
//       const SizedBox(height: 8),
//
//       TextField(
//         decoration: InputDecoration(
//           hintText: 'Password',
//           hintStyle: TextStyle(color: Colors.black26),
//
//           contentPadding: EdgeInsets.symmetric(
//             vertical: 12,
//             horizontal: 15,
//           ),
//
//           // Adjust vertical padding
//           border: OutlineInputBorder(
//             borderRadius: BorderRadius.circular(10),
//           ),
//           enabledBorder: OutlineInputBorder(
//             // Border when TextField is not focused
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(
//               color: Colors.black12,
//               width: 1.0,
//             ), // Custom color
//           ),
//           focusedBorder: OutlineInputBorder(
//             // Border when TextField is focused
//             borderRadius: BorderRadius.circular(10),
//             borderSide: BorderSide(
//               color: Colors.black12,
//               width: 1.0,
//             ), // Custom color
//           ),
//           suffixIcon: const Icon(Icons.visibility_outlined),
//         ),
//       ),
//
//       const SizedBox(height: 20),
//
//       // Password field
//       Align(
//         alignment: Alignment.centerLeft,
//         child: Text(
//           "Confirm Password",
//           style: TextStyle(fontSize: 16, color: Colors.black54),
//         ),
//       ),
//
//       const SizedBox(height: 8),
//
//       TextField(
//         decoration: InputDecoration(
//             hintText: 'Password',
//             hintStyle: TextStyle(color: Colors.black26),
//
//             contentPadding: EdgeInsets.symmetric(
//               vertical: 12,
//               horizontal: 15,
//             ),
//            border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//       ),
//       enabledBorder: OutlineInputBorder(
//         // Border when TextField is not focused
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(
//           color: Colors.black12,
//           width: 1.0,
//         ), // Custom color
//       ),
//       focusedBorder: OutlineInputBorder(
//         // Border when TextField is focused
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(
//           color: Colors.black12,
//           width: 1.0,
//         ), // Custom color
//       ),
//       suffixIcon: const Icon(Icons.visibility_outlined),
//     ),
//     ),
//
//     const SizedBox(height: 30),
//
//     Row(
//     children: [
//     /// terms and conditions checkbox
//     Container(
//     width: 18,
//     height: 18,
//     decoration: BoxDecoration(
//     borderRadius: BorderRadius.circular(6),
//     border: Border.all(color: Colors.black12, width: 0.5),
//     color: isAccept ? Colors.red[100] : Colors.transparent,
//     ),
//     child:
//     isAccept
//     ? Icon(
//     Icons.check,
//     size: 16,
//     color: Colors.red, // Red checkmark
//     )
//         : null,
//     ),
//
//     const SizedBox(width: 12),
//
//     Text("I agree and accept the ", style: TextStyle(fontSize: 15)),
//     InkWell(
//     onTap: () {
//
//     },
//     child: Text(
//     "terms to use.",
//     style: TextStyle(fontSize: 15, color: Colors.orange),
//     ),
//     ),
//     ],
//     ),
//
//     const SizedBox(height: 15),
//
//     // Sign Up button
//     ElevatedButton(
//     onPressed: () {
//     // Add sign-up logic here (e.g., save user data)
//     Navigator.pushReplacement(
//     context,
//     MaterialPageRoute(builder: (context) => const LoginScreen()),
//     );
//     },
//     style: ElevatedButton.styleFrom(
//     backgroundColor: Colors.orange,
//     minimumSize: const Size(double.infinity, 40),
//     shape: RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10),
//     ),
//     ),
//     child: const Text(
//     'Sign Up',
//     style: TextStyle(color: Colors.white),
//     ),
//     ),
//     ],
//     ),
//     ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'sign_in_page.dart';
import 'widgets/gender_option.dart';
import 'widgets/password_field.dart';


class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final ValueNotifier<bool> isMaleSelected = ValueNotifier<bool>(true);
  final ValueNotifier<bool> isFemaleSelected = ValueNotifier<bool>(false);
  final ValueNotifier<bool> isTermsAccepted = ValueNotifier<bool>(false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 50,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Stack(
                children: [
                  Image.asset('assets/logos/logo.png', width: 250, height: 100),

                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 45),
                    child: Text(
                      "Enjoy your travelling",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Title
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [

                ],
              ),
              // Name field
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Full Name',
                  // hintText: 'John Doe',
                ),
              ),
              const SizedBox(height: 16),
              // Email field
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Email',
                  // hintText: 'johndoe@gmail.com',
                ),
              ),
              const SizedBox(height: 16),

              // Gender Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  genderOption("Male", isMaleSelected, isFemaleSelected),
                  SizedBox(width: 10),
                  genderOption("Female", isFemaleSelected, isMaleSelected),
                ],
              ),
              SizedBox(height: 16),
              passwordField("Password"),
              SizedBox(height: 16),
              passwordField("Confirm Password"),
              const SizedBox(height: 16),
              // Terms Checkbox
              ValueListenableBuilder<bool>(
                valueListenable: isTermsAccepted,
                builder: (context, value, child) {
                  return Row(
                    children: [
                      Checkbox(
                        value: value,
                        activeColor: Colors.orange,
                        onChanged: (newValue) {
                          isTermsAccepted.value = newValue ?? false;
                        },
                      ),
                      Text("I agree and accept the "),
                      InkWell(
                        child: Text(
                          "terms of use.",
                          style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  );
                },
              ),
              SizedBox(height: 10),
              // Sign Up button
              ElevatedButton(
                onPressed: () {
                  // Add sign-up logic here (e.g., save user data)
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 8),
              // Login link
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                child: const Text(
                  'ALREADY HAVE AN ACCOUNT? LOG IN',
                  style: TextStyle(color: Colors.orange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
