import 'package:flutter/material.dart';
import 'package:money_laundry/screens/auth/exceptions/register_exception.dart';
import 'package:money_laundry/screens/auth/services/auth_service.dart';
import 'package:money_laundry/widgets/custom_input.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final authService = AuthService();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoading = false;

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
      backgroundColor: const Color(0xFF6594B1),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(flex: 2, child: SizedBox()),

            Expanded(
              flex: 5,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Form(
                  child: ListView(
                    children: [
                      /// Back Button
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Color(0xFF6594B1),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      /// Title
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF6594B1),
                        ),
                      ),

                      const SizedBox(height: 25),

                      /// Email
                      CustomInput(
                        label: 'Email',
                        controller: emailController,
                        icon: Icons.email,
                      ),

                      const SizedBox(height: 15),

                      /// Password
                      CustomInput(
                        label: 'Password',
                        controller: passwordController,
                        icon: Icons.lock,
                        isPassword: true,
                      ),

                      const SizedBox(height: 15),

                      /// Confirm Password
                      CustomInput(
                        label: 'Confirm Password',
                        controller: confirmPasswordController,
                        icon: Icons.lock,
                        isPassword: true,
                      ),

                      const SizedBox(height: 15),

                      /// Phone
                      CustomInput(
                        label: 'Phone',
                        controller: phoneController,
                        icon: Icons.phone,
                      ),

                      const SizedBox(height: 25),

                      /// Regis Button
                      SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          onPressed: isLoading
                              ? null
                              : () async {
                                  setState(() => isLoading = true);
                                  try {
                                    await Future.delayed(
                                      const Duration(seconds: 2),
                                    );

                                    authService.register(
                                      emailController.text.trim(),
                                      passwordController.text.trim(),
                                      confirmPasswordController.text.trim(),
                                      phoneController.text.trim(),
                                    );
                                    if (!context.mounted) return;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text('Register berhasil'),
                                      ),
                                    );
                                    await Future.delayed(
                                      const Duration(seconds: 1),
                                    );
                                    if (!context.mounted) return;
                                    Navigator.pop(context);
                                  } catch (e) {
                                    final message = e is RegisterException
                                        ? e.message
                                        : 'Terjadi kesalahan saat register';
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text(message)),
                                    );
                                  } finally {
                                    if (mounted) {
                                      setState(() => isLoading = false);
                                    }
                                  }
                                },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6594B1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: isLoading
                              ? const CircularProgressIndicator(
                                  color: Colors.white,
                                )
                              : const Text(
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
