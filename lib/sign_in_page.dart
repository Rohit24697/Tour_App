// import 'package:flutter/material.dart';
//
// import 'sign_up_page.dart';
//
// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(left: 30, right: 30, top: 100),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Logo
//               Stack(
//                 children: [
//                   Image.asset('assets/logos/logo.png', width: 220, height: 100),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 80, left: 35),
//                     child: Text(
//                       "Enjoy your travelling",
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 50),
//
//               // Title
//               const Text('Log In', style: TextStyle(fontSize: 25)),
//
//               const SizedBox(height: 25),
//
//               // Email field
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Email",
//                   style: TextStyle(fontSize: 16, color: Colors.black54),
//                 ),
//               ),
//
//               const SizedBox(height: 8),
//
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'davidjohn@gmail.com',
//                   hintStyle: TextStyle(color: Colors.black26),
//                   // Hint text color
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     // Border when TextField is not focused
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.black12,
//                       width: 2.0,
//                     ), // Custom color
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     // Border when TextField is focused
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.black12,
//                       width: 2.0,
//                     ), // Custom color
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 20),
//
//               // Password field
//               Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Password",
//                   style: TextStyle(fontSize: 16, color: Colors.black54),
//                 ),
//               ),
//
//               const SizedBox(height: 8),
//
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Password',
//                   hintStyle: TextStyle(color: Colors.black26),
//                   // Hint text color
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     // Border when TextField is not focused
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.black12,
//                       width: 2.0,
//                     ), // Custom color
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     // Border when TextField is focused
//                     borderRadius: BorderRadius.circular(10),
//                     borderSide: BorderSide(
//                       color: Colors.black12,
//                       width: 2.0,
//                     ), // Custom color
//                   ),
//                   suffixIcon: const Icon(Icons.visibility),
//                 ),
//               ),
//
//               const SizedBox(height: 17),
//
// // Forgot Password link
//               Align(
//                 alignment: Alignment.center,
//                 child: TextButton(
//                   onPressed: () {
//                     // Add forgot password logic here
//                   },
//                   child: const Text(
//                     'Forgot Password?',
//                     style: TextStyle(color: Colors.orange),
//                   ),
//                 ),
//               ),
//
//               const SizedBox(height: 4),
//
//               // Login button
//               ElevatedButton(
//                 onPressed: () {
//                   // Add login logic here (e.g., check email and password)
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   minimumSize: const Size(double.infinity, 45),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'Log In',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//
//               const SizedBox(height: 10),
//
//               Align(
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Or',
//                   style: TextStyle(color: Colors.black38, fontSize: 20),
//                 ),
//               ),
//
//               const SizedBox(height: 20),
//
//               // Login with Google button
//               ElevatedButton(
//                 onPressed: () {
//                   // Add Login with Google logic
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 45),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'assets/logos/google_logo.png',
//                       width: 30,
//                       height: 30,
//                     ),
//
//                     SizedBox(width: 5),
//
//                     const Text(
//                       'Log In With Google ',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//
//               SizedBox(height: 10,),
//
//               // Sign Up link
//               TextButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => const SignUpScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text(
//                   'Sign Up Here',
//                   style: TextStyle(color: Colors.orange),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import 'map_page.dart';
import 'sign_up_page.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            padding: const EdgeInsets.only(top: 80, left: 40),
            child: Text(
              "Enjoy your travelling",
              style: TextStyle(fontSize: 15),
            ),
          ),
          ],
        ),

        const SizedBox(height: 60),

        // Title
        const Text(
          'Log In',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 30),

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
        const SizedBox(height: 20),
        // Password field
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            labelText: 'Password',
            suffixIcon: const Icon(Icons.visibility_off),
          ),
        ),
        const SizedBox(height: 10),

        // Forgot Password link
        Align(
          alignment: Alignment.center,
          child: TextButton(
            onPressed: () {
              // Add forgot password logic here
            },
            child: const Text(
              'Forgot Password?',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ),

        const SizedBox(height: 20),

        // Login button
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MapPage()),
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
            'Log In',
            style: TextStyle(color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        Text('Or',style: TextStyle(fontSize: 18.0),),
        SizedBox(height: 10),

                ElevatedButton.icon(
                  onPressed: () {
                    // Uncomment the below code to navigate to the MapPage
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => const MapPage()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    // backgroundColor: Colors,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Image.asset(
                    'assets/logos/google-logo.png',
                    height: 24,
                  ),
                  label: const Text(
                    'Log In With Google',
                    style: TextStyle(color: Colors.black),
                  ),
                ),

      // Sign Up link
      TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SignUpScreen()),
          );
        },
        child: const Text(
          'Sign Up Here',
          style: TextStyle(color: Colors.orange),
        ),
      ),
      ],
    ),)
    ,
    )
    ,
    );
  }
}
