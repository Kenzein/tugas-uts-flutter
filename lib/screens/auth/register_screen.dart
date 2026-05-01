import 'package:flutter/material.dart';
import 'package:money_laundry/widgets/custom_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6594B1),
      body: SafeArea(
        child: Column(
          children: [
            /// ===== TOP SPACE =====
            Expanded(flex: 2, child: SizedBox()),

            /// ===== FORM =====
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Form(
                  key: _formKey,
                  child: ListView(
                    children: [
                      // BACK
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Back"),
                          ),
                        ],
                      ),

                      SizedBox(height: 15),

                      /// TITLE
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6594B1),
                        ),
                      ),

                      SizedBox(height: 25),

                      // Custom Input Email
                      CustomInput(
                        label: 'Email',
                        controller: emailController,
                        icon: Icons.email,
                      ),

                      const SizedBox(height: 15),

                      // Custom Input Password
                      CustomInput(
                        label: 'Password',
                        controller: passwordController,
                        icon: Icons.lock,
                        isPassword: true,
                      ),

                      const SizedBox(height: 15),
                      //Custom Input Confirm Password
                      CustomInput(
                        label: 'Confirm Password',
                        controller: confirmPasswordController,
                        icon: Icons.lock,
                        isPassword: true,
                      ),

                      const SizedBox(height: 15),
                      // Custom Input Phone
                      CustomInput(
                        label: 'Phone',
                        controller: phoneController,
                        icon: Icons.phone,
                      ),

                      SizedBox(height: 25),

                      /// BUTTON
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (!_formKey.currentState!.validate()) return;

                            if (passwordController.text !=
                                confirmPasswordController.text) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Password tidak sama')),
                              );
                              return;
                            }

                            setState(() => isLoading = true);

                            await Future.delayed(Duration(seconds: 3));

                            if (!context.mounted) return;

                            setState(() => isLoading = false);

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Register berhasil')),
                            );

                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6594B1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: isLoading
                              ? CircularProgressIndicator(color: Colors.white)
                              : Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
