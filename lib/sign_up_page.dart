import 'package:flutter/material.dart';


import 'sign_in_page.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // State variables declared here

  // Can be 'male', 'female', or null
  String? _selectedGender;

  // for terms and conditions checkbox
  bool _isAccept = true;

  // for password visible and hide logic
  bool _isVisiblePass = true; // to give password visible or hide logic

  bool _isPasswordValid = false;

  // for confirm password visible and hide logic
  bool _isVisibleConfirmPass = false;

  final _passwordController = TextEditingController(); // password controller

  final _formKey = GlobalKey<FormState>(); // this is form key

  final _confirmPasswordController = TextEditingController();

  final _emailController = TextEditingController(); // email controller

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Top Logo
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/logos/logo.png',
                        width: 220,
                        height: 100,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 75, left: 36),
                        child: Text(
                          "Enjoy your travelling",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 50),

                /// Title
                const Text('Sign Up', style: TextStyle(fontSize: 24)),

                const SizedBox(height: 80),

                /// Password field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),

                const SizedBox(height: 8),

                /// for Email
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'davidjohn@gmail.com',
                    hintStyle: TextStyle(color: Colors.black26),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      // Add error border style
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      // Add focused error border
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email";
                    }
                    if (!RegExp(
                      r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                    ).hasMatch(value)) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                /// Gender Checkbox field
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// for male check box
                    GestureDetector(
                      onTap: () {
                        setState(
                              () =>
                          _selectedGender =
                          (_selectedGender == 'Male' ? null : 'Male'),
                        );
                        // _formKey.currentState?.validate();
                      },

                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Text("Male", style: TextStyle(fontSize: 12)),
                              SizedBox(width: 70),
                              Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 0.5,
                                  ),
                                  color:
                                  _selectedGender == 'Male'
                                      ? Colors.red[100]
                                      : Colors.transparent,
                                ),
                                child:
                                _selectedGender == 'Male'
                                    ? Icon(
                                  Icons.check,
                                  size: 16,
                                  color: Colors.red, // Red checkmark
                                )
                                    : null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    /// for female check box
                    GestureDetector(
                      onTap: () {
                        setState(
                              () =>
                          _selectedGender =
                          (_selectedGender == 'Female'
                              ? null
                              : 'Female'),
                        );
                        // _formKey.currentState?.validate();
                      },
                      child: Container(
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.black12,
                            width: 1,
                            style: BorderStyle.solid,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Row(
                            children: [
                              Text("Female", style: TextStyle(fontSize: 12)),

                              SizedBox(width: 70),
                              Container(
                                width: 18,
                                height: 18,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 0.5,
                                  ),
                                  color:
                                  _selectedGender == 'Female'
                                      ? Colors.red[100]
                                      : Colors.transparent,
                                ),
                                child:
                                _selectedGender == 'Female'
                                    ? Icon(
                                  Icons.check,
                                  size: 16,
                                  color: Colors.red, // Red checkmark
                                )
                                    : null,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                /// Password field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),

                const SizedBox(height: 8),

                TextFormField(
                  controller: _passwordController,
                  obscureText: !_isVisiblePass,
                  onChanged: (value) {
                    setState(() {
                      _isPasswordValid =
                          value.length >= 6; // Update validation state
                    });
                  },
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black26),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color:
                        _isPasswordValid &&
                            _passwordController.text.isNotEmpty
                            ? Colors
                            .green // Green when valid
                            : Colors.black12,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color:
                        _isPasswordValid &&
                            _passwordController.text.isNotEmpty
                            ? Colors.green
                            : Colors.black12,
                        width: 1.0,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_passwordController.text.isNotEmpty)
                          Icon(
                            _isPasswordValid ? Icons.check_circle : Icons.error,
                            color: _isPasswordValid ? Colors.green : Colors.red,
                            size: 20,
                          ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() => _isVisiblePass = !_isVisiblePass);
                          },
                          icon: Icon(
                            _isVisiblePass
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Colors.black45,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your password";
                    }
                    if (value.length < 6) {
                      return "Password must be at least 6 characters";
                    }
                    if (!value.contains(RegExp(r'[A-Z]'))) {
                      return "Include at least one uppercase letter";
                    }
                    if (!value.contains(RegExp(r'[0-9]'))) {
                      return "Include at least one number";
                    }
                    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                      return "Include at least one special character";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 20),

                // Password field
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                ),

                const SizedBox(height: 8),

                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: !_isVisibleConfirmPass,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.black26),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12, width: 1.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.red, width: 1.0),
                    ),
                    suffixIcon: IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(
                              () => _isVisibleConfirmPass = !_isVisibleConfirmPass,
                        );
                      },
                      icon: Icon(
                        _isVisibleConfirmPass
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: Colors.black45,
                        size: 20,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please confirm your password";
                    }
                    if (value != _passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 30),

                Row(
                  children: [
                    /// terms and conditions checkbox
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isAccept = !_isAccept;
                        });
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black12, width: 0.5),
                          color:
                          _isAccept ? Colors.red[100] : Colors.transparent,
                        ),
                        child:
                        _isAccept
                            ? Icon(
                          Icons.check,
                          size: 16,
                          color: Colors.red, // Red checkmark
                        )
                            : null,
                      ),
                    ),

                    const SizedBox(width: 12),

                    Text(
                      "I agree and accept the ",
                      style: TextStyle(fontSize: 15),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const TermsAndConditions(),
                        //   ),
                        // );
                      },
                      child: Text(
                        "terms to use.",
                        style: TextStyle(fontSize: 15, color: Colors.orange),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 15),

                // Sign Up button
                ElevatedButton(
                  onPressed: () {
                    // 1. First validate the form fields (email and passwords)
                    if (!_formKey.currentState!.validate()) {
                      return;
                    }

                    // 2. Then check gender selection
                    if (_selectedGender == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select your gender')),
                      );
                      return;
                    }

                    // 3. Then check terms acceptance
                    if (!_isAccept) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Please accept the terms and conditions',
                          ),
                        ),
                      );
                      return;
                    }

                    // All validations passed - proceed with sign up
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(double.infinity, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? _validateGender(String? value) {
    if (_selectedGender == null) {
      return "Please select your gender";
    }
    return null;
  }
}


// import 'package:flutter/material.dart';
//
// import 'sign_in_page.dart';
// import 'widgets/gender_option.dart';
// import 'widgets/password_field.dart';
//
//
// class SignUpScreen extends StatelessWidget {
//   SignUpScreen({super.key});
//
//   final ValueNotifier<bool> isMaleSelected = ValueNotifier<bool>(true);
//   final ValueNotifier<bool> isFemaleSelected = ValueNotifier<bool>(false);
//   final ValueNotifier<bool> isTermsAccepted = ValueNotifier<bool>(false);
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.only(left: 30, right: 30, top: 50,),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Logo
//               Stack(
//                 children: [
//                   Image.asset('assets/logos/logo.png', width: 250, height: 100),
//
//                   Padding(
//                     padding: const EdgeInsets.only(top: 80, left: 45),
//                     child: Text(
//                       "Enjoy your travelling",
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//               // Title
//               const Text(
//                 'Sign Up',
//                 style: TextStyle(
//                   fontSize: 24,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 30),
//               Row(
//                 children: [
//
//                 ],
//               ),
//               // Name field
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   labelText: 'Full Name',
//                   // hintText: 'John Doe',
//                 ),
//               ),
//               const SizedBox(height: 16),
//               // Email field
//               TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   labelText: 'Email',
//                   // hintText: 'johndoe@gmail.com',
//                 ),
//               ),
//               const SizedBox(height: 16),
//
//               // Gender Selection
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   genderOption("Male", isMaleSelected, isFemaleSelected),
//                   SizedBox(width: 10),
//                   genderOption("Female", isFemaleSelected, isMaleSelected),
//                 ],
//               ),
//               SizedBox(height: 16),
//               passwordField("Password"),
//               SizedBox(height: 16),
//               passwordField("Confirm Password"),
//               const SizedBox(height: 16),
//               // Terms Checkbox
//               ValueListenableBuilder<bool>(
//                 valueListenable: isTermsAccepted,
//                 builder: (context, value, child) {
//                   return Row(
//                     children: [
//                       Checkbox(
//                         value: value,
//                         activeColor: Colors.orange,
//                         onChanged: (newValue) {
//                           isTermsAccepted.value = newValue ?? false;
//                         },
//                       ),
//                       Text("I agree and accept the "),
//                       InkWell(
//                         child: Text(
//                           "terms of use.",
//                           style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ],
//                   );
//                 },
//               ),
//               SizedBox(height: 10),
//               // Sign Up button
//               ElevatedButton(
//                 onPressed: () {
//                   // Add sign-up logic here (e.g., save user data)
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const LoginScreen()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.orange,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'Sign Up',
//                   style: TextStyle(color: Colors.white),
//                 ),
//               ),
//               const SizedBox(height: 8),
//               // Login link
//               TextButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const LoginScreen()),
//                   );
//                 },
//                 child: const Text(
//                   'ALREADY HAVE AN ACCOUNT? LOG IN',
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
