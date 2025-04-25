import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/services/auth_service.dart';
import 'package:flutter_login/flutter_login.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    return AuthService().login(data.name, data.password);
  }

  Future<String?> _signupUser(SignupData data) {
    return AuthService().register(data.name!, data.password!);
  }

  Future<String?> _recoverPassword(String name) {
    // Implement password recovery if needed
    return Future.value('Password recovery not implemented');
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login & Register',
      logo: const AssetImage('assets/logo.png'), // Add your logo in assets/
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      onRecoverPassword: _recoverPassword,
      theme: LoginTheme(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        cardTheme: const CardTheme(
          color: Colors.white,
          elevation: 8,
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        ),
        titleStyle: const TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyStyle: const TextStyle(fontSize: 16),
        buttonTheme: const LoginButtonTheme(
          backgroundColor: Colors.blue,
          highlightColor: Colors.blueAccent,
          splashColor: Colors.white24,
        ),
      ),
      messages: LoginMessages(
        userHint: 'Email',
        passwordHint: 'Password',
        confirmPasswordHint: 'Confirm Password',
        loginButton: 'LOGIN',
        signupButton: 'REGISTER',
        forgotPasswordButton: 'Forgot Password?',
        recoverPasswordButton: 'RECOVER',
        goBackButton: 'GO BACK',
        confirmPasswordError: 'Passwords do not match!',
        recoverPasswordDescription: 'Enter your email to recover your password.',
      ),
      userValidator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email';
        }
        if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
          return 'Please enter a valid email';
        }
        return null;
      },
      passwordValidator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        if (value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}