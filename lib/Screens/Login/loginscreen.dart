import 'package:flutter/material.dart';
import 'package:instagram_series/Screens/bottomnav/bottomnav.dart';
import 'package:instagram_series/Widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CustomImage(imgurl: "logo.png"),
              const SizedBox(height: 20),
              UiHelper.CustomTextField(
                controller: emailController,
                text: "Email",
                tohide: false,
              ),
              const SizedBox(height: 15),
              UiHelper.CustomTextField(
                controller: passwordController,
                text: "Password",
                tohide: true,
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: UiHelper.CustomTextButton(
                  text: "Forgot password?",
                  callback: () {},
                ),
              ),
              const SizedBox(height: 10),
              UiHelper.CustomButton(
                callback: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => BottomNavScreen()),
                  );
                },
                buttonname: "Log In",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImage(imgurl: "Icon.png"),
                  const SizedBox(width: 8),
                  UiHelper.CustomTextButton(
                    text: "Log in with Facebook",
                    callback: () {},
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Text(
                "OR",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  UiHelper.CustomTextButton(
                    text: "Sign Up",
                    callback: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
