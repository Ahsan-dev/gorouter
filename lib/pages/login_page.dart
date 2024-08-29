import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';
import 'package:gorouter/router/router_constants.dart';
import 'package:gorouter/utils/go_preference.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController idController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login here"),
            TextField(
              controller: idController,
            ),
            TextField(
              controller: passController,
            ),
            TextButton(
              onPressed: () {
                _loginNow(
                  context,
                  idController.text,
                  passController.text,
                );
              },
              child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }

  void _loginNow(
    BuildContext context,
    String id,
    String pass,
  ) {
    if (id == "abcd" && pass == "123456") {
      GoPreference.writeValue(true);
      context.go(RouterConstants.homePagePath);
    } else {
      GoPreference.writeValue(false);
      print('Invalid ID or password!');
    }
  }
}
