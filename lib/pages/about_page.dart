import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';
import 'package:gorouter/router/router_constants.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: const Center(
        child: Text(
          "About Page"
        ),
      ),
      onNextPressed: () {
        context.go(RouterConstants.contactUsPagePath);
      },
      onPreviousPressed: () {
        context.go(RouterConstants.homePagePath);
      },
    );
  }
}
