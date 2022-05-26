import 'package:amazon_clone/common/custom_button.dart';
import 'package:amazon_clone/common/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

enum Auth {
  signin,
  signup,
}

class _AuthScreenState extends State<AuthScreen> {
  Auth _auth = Auth.signup;
  final _signUpFormKey = GlobalKey<FormState>();
  final _signInFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose

    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListTile(
                tileColor: _auth == Auth.signup
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundColor,
                title: const Text(
                  'Create Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signup)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    color: GlobalVariables.backgroundColor,
                  ),
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          passwordField: false,
                          textFieldController: _nameController,
                          hintText: 'Name',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          passwordField: false,
                          textFieldController: _emailController,
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          passwordField: true,
                          textFieldController: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomButon(buttonText: 'Create Account', onTap: () {}),
                      ],
                    ),
                  ),
                ),
              ListTile(
                tileColor: _auth == Auth.signin
                    ? GlobalVariables.backgroundColor
                    : GlobalVariables.greyBackgroundColor,
                title: const Text(
                  'Sign In',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              if (_auth == Auth.signin)
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                    color: GlobalVariables.backgroundColor,
                  ),
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          passwordField: false,
                          textFieldController: _emailController,
                          hintText: 'Email',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomTextField(
                          passwordField: true,
                          textFieldController: _passwordController,
                          hintText: 'Password',
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        CustomButon(buttonText: 'Sign In', onTap: () {}),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
