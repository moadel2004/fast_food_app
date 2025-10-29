import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/constants/app_colors.dart';
import 'package:hungry/features/auth/view/signup_view.dart';
import 'package:hungry/features/auth/widgets/custom_bottom.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_text_field.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Gap(50),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Image.asset('assets/logo/logo.png'),
                  ),
                  const Gap(10),
                  CustomText(
                    text: 'Welcome Back, Discover the best fast food',
                    color: Colors.white,
                    size: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  const Gap(70),
                  CustomTextField(
                    controller: emailController,
                    hint: 'Email',
                    iSPassword: false,
                  ),
                  const Gap(20),
                  CustomTextField(
                    controller: passwordController,
                    hint: 'Password',
                    iSPassword: true,
                  ),
                  const Gap(40),
                  GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        print('Success login');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white,
                      ),
                      height: 55,
                      width: double.infinity,
                      child: Center(
                        child: CustomText(
                          text: 'Login',
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w500,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomText(
                        text: "Don't have an account?",
                        color: Colors.white,
                        size: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      const Gap(5),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => SignupView()),
                          );
                        },
                        child: CustomText(
                          text: "Sign up",
                          color: Colors.white,
                          size: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
