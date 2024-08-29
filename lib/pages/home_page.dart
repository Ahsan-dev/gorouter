import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';
import 'package:gorouter/router/router_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Page"),
            TextButton(
              onPressed: () {
                context.go(RouterConstants.profilePagePath);
              },
              child: Text('Go to your profile'),
            )
          ],
        ),
      ),
      onNextPressed: () {
        context.go(RouterConstants.aboutPagePath);
      },
    );
  }
}
