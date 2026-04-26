// import 'package:flutter/material.dart';
// import '../data/users_data.dart';

// class RegisterPage extends StatefulWidget {
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {

//   final _formKey = GlobalKey<FormState>();

//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//   final phoneController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xFF6594B1),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(flex: 2, child: SizedBox()),

//             Expanded(
//               flex: 5,
//               child: Container(
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(30),
//                   ),
//                 ),
//                 child: Form(
//                   key: _formKey,
//                   child: ListView(
//                     children: [

//                       /// BACK
//                       ElevatedButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text("Back"),
//                       ),

//                       SizedBox(height: 15),

//                       Text(
//                         "Sign Up",
//                         style: TextStyle(
//                           fontSize: 28,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF6594B1),
//                         ),
//                       ),

//                       SizedBox(height: 25),

//                       buildTextField(
//                         controller: emailController,
//                         hint: "Email",
//                         icon: Icons.email,
//                         validator: (value) =>
//                             value!.isEmpty ? "Email wajib diisi" : null,
//                       ),

//                       SizedBox(height: 15),

//                       buildTextField(
//                         controller: passwordController,
//                         hint: "Password",
//                         icon: Icons.lock,
//                         obscure: true,
//                         validator: (value) =>
//                             value!.length < 6 ? "Minimal 6 karakter" : null,
//                       ),

//                       SizedBox(height: 15),

//                       buildTextField(
//                         controller: confirmPasswordController,
//                         hint: "Confirm Password",
//                         icon: Icons.lock_outline,
//                         obscure: true,
//                         validator: (value) =>
//                             value != passwordController.text
//                                 ? "Password tidak sama"
//                                 : null,
//                       ),

//                       SizedBox(height: 15),

//                       buildTextField(
//                         controller: phoneController,
//                         hint: "Phone",
//                         icon: Icons.phone,
//                         validator: (value) =>
//                             value!.isEmpty ? "Nomor wajib diisi" : null,
//                       ),

//                       SizedBox(height: 25),

//                       /// BUTTON REGISTER
//                       SizedBox(
//                         height: 50,
//                         child: ElevatedButton(
//                           onPressed: () {
//                             if (_formKey.currentState!.validate()) {

//                               bool isExist = users.any(
//                                   (user) => user["email"] == emailController.text);

//                               if (isExist) {
//                                 ScaffoldMessenger.of(context).showSnackBar(
//                                   SnackBar(content: Text("Email sudah terdaftar")),
//                                 );
//                                 return;
//                               }

//                               users.add({
//                                 "email": emailController.text,
//                                 "password": passwordController.text,
//                               });

//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(content: Text("Register berhasil")),
//                               );

//                               Navigator.pop(context);
//                             }
//                           },
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Color(0xFF6594B1),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(30),
//                             ),
//                           ),
//                           child: Text("Register"),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildTextField({
//     required TextEditingController controller,
//     required String hint,
//     required IconData icon,
//     bool obscure = false,
//     String? Function(String?)? validator,
//   }) {
//     return TextFormField(
//       controller: controller,
//       obscureText: obscure,
//       validator: validator,
//       decoration: InputDecoration(
//         prefixIcon: Icon(icon),
//         hintText: hint,
//         filled: true,
//         fillColor: Colors.grey.shade100,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }