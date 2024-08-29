import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';

import '../router/router_constants.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: const Center(
        child: Text(
            "Contact Us Page"
        ),
      ),
      onNextPressed: () {
        context.go(RouterConstants.productsPagePath);
      },
      onPreviousPressed: () {
        context.go(RouterConstants.aboutPagePath);
      },
    );
  }
}