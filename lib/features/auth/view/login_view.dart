import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/constants/app_colors.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_text_field.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    Gap(100),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * .7,
                      child: Image.asset('assets/logo/logo.png'),
                    ),
                    Gap(10),
                    CustomText(
                      text: 'Welcome Back, Discover the best fast food',
                      color: Colors.white,
                      size: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    Gap(70),
                    CustomTextField(
                      controller: emailController,
                      hint: 'Email',
                      iSPassword: false,
                    ),
                    Gap(20),
                    CustomTextField(
                      controller: passwordController,
                      hint: 'Password',
                      iSPassword: true,
                    ),
                    Gap(30),
                    GestureDetector(
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          print('Seuccess login');
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
