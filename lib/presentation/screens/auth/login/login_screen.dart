import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:springboot_test_bench/core/constants/app_theme.dart';
import 'package:springboot_test_bench/dependencies/injector.dart';
import 'package:springboot_test_bench/presentation/components/button.dart';
import 'package:springboot_test_bench/presentation/components/textfield.dart';
import 'package:springboot_test_bench/presentation/screens/auth/login/cubit/login_cubit.dart';
import 'package:springboot_test_bench/presentation/screens/chat_screen/chat_screen.dart';
import 'package:springboot_test_bench/presentation/screens/home/home_screen.dart';

enum Option { login, register }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Option selectedOption = Option.login;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final emailController = TextEditingController();

  String emailErrorPlaceholder = "";
  String passwordErrorPlaceholder = "";
  String usernameErrorPlaceholder = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginCubit>(),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is loginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("Login successful!", style: snackbarTextStyle),
                  backgroundColor: Colors.green),
            );
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          } else if (state is loginError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(state.message), backgroundColor: Colors.red),
            );
          }

          if (state is registerSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text("Registered successfully!",
                      style: snackbarTextStyle),
                  backgroundColor: Colors.green),
            );
            setState(() {
              selectedOption = Option.login;
              usernameController.clear();
              emailController.clear();
              passwordController.clear();
            });
            // Navigator.pushReplacement(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => ChatScreen(chatroom: state.room),
            //     ));
          } else if (state is registerError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(state.message), backgroundColor: Colors.red),
            );
          }
        },
        child: BlocBuilder<LoginCubit, LoginState>(
          builder: (context, state) {
            final isLoading = state is loginLoading || state is registerLoading;
            log("FullScreen rebuilding");
            return Scaffold(
              backgroundColor: kprimaryColor,
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 0.1.sh),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/main-logo.png",
                                color: kWhiteColor),
                            Text("ChatApp",
                                style: headingTextStyle.copyWith(
                                    color: kWhiteColor)),
                          ],
                        ),
                      ),
                      SizedBox(height: 0.05.sh),
                      selectedOption == Option.login
                          ? _buildLoginCard(context, isLoading)
                          : _buildRegisterCard(context, isLoading),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildLoginCard(BuildContext context, bool isLoading) {
    //for signups

    bool validateEmail(String email) {
      String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
      RegExp regex = RegExp(pattern);
      // Check if the email matches the pattern
      bool isValid = regex.hasMatch(email);
      if (!isValid) {
        setState(() {
          emailErrorPlaceholder = "Invalid email";
        });
      } else {
        setState(() {
          emailErrorPlaceholder = "";
        });
      }
      return isValid;
    }

    bool validatePassword(String password) {
      String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
      RegExp regex = RegExp(pattern);
      bool isValid = regex.hasMatch(password);
      if (!isValid) {
        setState(() {
          passwordErrorPlaceholder =
              "Password must be at least 8 characters long and contain at least one letter and one number";
        });
      } else {
        setState(() {
          passwordErrorPlaceholder = "";
        });
      }
      return isValid;
    }

    return Center(
      child: Container(
        key: const ValueKey(Option.login),
        // height: 0.4.sh,
        width: 0.9.sw,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: _boxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Join the ChatRooms!', style: headingTextStyle),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Email', style: textfieldPlaceholderStyle),
                CustomTextField(
                    hintText: "Example123@chatroom.com",
                    controller: emailController,
                    inputType: TextInputType.text,
                    onChanged: (p0) => validateEmail(p0),
                    placeHolder: emailErrorPlaceholder),
                // placeHolder: ""),
                SizedBox(height: 0.005.sh),
                Text('Enter Password', style: textfieldPlaceholderStyle),
                CustomTextField(
                    hintText: "********",
                    controller: passwordController,
                    isPasswordField: true,
                    inputType: TextInputType.visiblePassword,
                    onChanged: (p0) => validatePassword(p0),
                    placeHolder: passwordErrorPlaceholder),
              ],
            ),
            CustomButton(
              isLoading: isLoading,
              title: "Join",
              onTap: () {
                if (emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  context
                      .read<LoginCubit>()
                      .login(emailController.text, passwordController.text);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text("Email and password are required"),
                        backgroundColor: Colors.red),
                  );
                }
              },
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            InkWell(
              onTap: () {
                setState(() => selectedOption = Option.register);
              },
              child: Text(
                "Don't have a room? Create one",
                style: textfieldPlaceholderStyle.copyWith(
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRegisterCard(BuildContext context, bool isLoading) {
    bool validateEmail(String email) {
      String pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
      RegExp regex = RegExp(pattern);
      // Check if the email matches the pattern
      bool isValid = regex.hasMatch(email);
      if (!isValid) {
        setState(() {
          emailErrorPlaceholder = "Invalid email";
        });
      } else {
        setState(() {
          emailErrorPlaceholder = "";
        });
      }
      return isValid;
    }

    bool validatePassword(String password) {
      String pattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';
      RegExp regex = RegExp(pattern);
      bool isValid = regex.hasMatch(password);
      if (!isValid) {
        setState(() {
          passwordErrorPlaceholder =
              "Password must be at least 8 characters long and contain at least one letter and one number";
        });
      } else {
        setState(() {
          passwordErrorPlaceholder = "";
        });
      }
      return isValid;
    }

    bool validateUsername(String username) {
      String pattern = r'^[a-zA-Z0-9._%+-]{3,}$';
      RegExp regex = RegExp(pattern);
      // Check if the email matches the pattern
      bool isValid = regex.hasMatch(username);
      if (!isValid) {
        setState(() {
          usernameErrorPlaceholder =
              "Username must be at least 3 characters long and contain only letters and numbers";
        });
      } else {
        setState(() {
          usernameErrorPlaceholder = "";
        });
      }
      return isValid;
    }

    return Center(
      child: Container(
        key: const ValueKey(Option.register),
        // height: 0.7.sh,
        width: 0.9.sw,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        decoration: _boxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Sign up for ChatRoom!', style: headingTextStyle),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Enter Username', style: textfieldPlaceholderStyle),
                CustomTextField(
                    hintText: "Example123",
                    controller: usernameController,
                    inputType: TextInputType.text,
                    onChanged: (p0) => validateUsername(p0),
                    placeHolder: usernameErrorPlaceholder),
                SizedBox(height: 0.005.sh),
                Text('Enter Email', style: textfieldPlaceholderStyle),
                CustomTextField(
                    hintText: "Example@chatroon.com",
                    controller: emailController,
                    inputType: TextInputType.emailAddress,
                    onChanged: (p0) => validateEmail(p0),
                    placeHolder: emailErrorPlaceholder),
                SizedBox(height: 0.005.sh),
                Text('Enter Password', style: textfieldPlaceholderStyle),
                CustomTextField(
                    hintText: "********",
                    controller: passwordController,
                    isPasswordField: true,
                    inputType: TextInputType.visiblePassword,
                    onChanged: (p0) => validatePassword(p0),
                    placeHolder: passwordErrorPlaceholder),
              ],
            ),
            CustomButton(
              isLoading: isLoading,
              title: "Create",
              onTap: () {
                if (usernameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  context.read<LoginCubit>().register(usernameController.text,
                      emailController.text, passwordController.text);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content:
                            Text("Username, email and password are required"),
                        backgroundColor: Colors.red),
                  );
                }
              },
            ),
            SizedBox(
              height: 0.005.sh,
            ),
            InkWell(
              onTap: () {
                setState(() => selectedOption = Option.login);
              },
              child: Text(
                "Already have a room? Join one",
                style: textfieldPlaceholderStyle.copyWith(
                    decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: kWhiteColor,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          blurRadius: 10,
          offset: const Offset(0, 5),
        ),
      ],
    );
  }
}
