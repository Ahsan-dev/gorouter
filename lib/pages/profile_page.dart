import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';
import 'package:gorouter/router/router_constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: const Center(
        child: Text(
          "Profile Page"
        ),
      ),
      onPreviousPressed: () {
        context.go(RouterConstants.homePagePath);
      },
    );
  }
}
