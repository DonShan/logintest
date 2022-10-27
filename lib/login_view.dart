import 'package:flutter/material.dart';
import 'package:logintest/email_validation.dart';
import 'package:logintest/home_view.dart';
import 'package:logintest/password_validation.dart';
import 'package:logintest/round_button.dart';

class LogInView extends StatefulWidget {
  const LogInView({super.key});

  @override
  State<LogInView> createState() => _LogInViewState();
}

class _LogInViewState extends State<LogInView> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    @override
    void dispose() {
      super.dispose();

      _emailController.dispose();
      _passwordController.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Email"),
                const SizedBox(
                  height: 15.0,
                ),
                EmailDeildWidget(controller: _emailController),
                const SizedBox(
                  height: 15.0,
                ),
                const Text("Password"),
                const SizedBox(
                  height: 15.0,
                ),
                PasswordDetailWidget(controller: _passwordController),
                const SizedBox(
                  height: 15.0,
                ),
                RoundButton(
                    title: "Log in",
                    onPress: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                        );
                      }
                    }),
                const SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
