import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/constants/app_colors.dart';
import 'package:hungry/features/auth/widgets/custom_bottom.dart';
import 'package:hungry/shared/custom_text.dart';
import 'package:hungry/shared/custom_text_field.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                const Gap(70),
                CustomTextField(
                  controller: nameController,
                  hint: 'Name',
                  iSPassword: false,
                ),
                const Gap(20),
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
                const Gap(20),
                CustomTextField(
                  controller: confirmPassController,
                  hint: 'Confirm Password',
                  iSPassword: true,
                ),
                const Gap(30),
                CustomBottom(
                  text: 'Sign up',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print('Success signup');
                    }
                  },
                ),
                const Gap(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomText(
                      text: "Already have an account?",
                      color: Colors.white,
                      size: 15,
                      fontWeight: FontWeight.w400,
                    ),
                    const Gap(5),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CustomText(
                        text: "Login",
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
    );
  }
}
