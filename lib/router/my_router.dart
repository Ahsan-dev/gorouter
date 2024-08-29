import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/about_page.dart';
import 'package:gorouter/pages/contact_us_page.dart';
import 'package:gorouter/pages/home_page.dart';
import 'package:gorouter/pages/login_page.dart';
import 'package:gorouter/pages/products_page.dart';
import 'package:gorouter/router/router_constants.dart';
import 'package:gorouter/utils/go_preference.dart';

import '../pages/product_page.dart';
import '../pages/profile_page.dart';

final myRouter = GoRouter(
  initialLocation: RouterConstants.homePagePath,
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      name: RouterConstants.homePageName,
      path: RouterConstants.homePagePath,
      builder: (_, __) => const HomePage(),
    ),
    GoRoute(
      name: RouterConstants.aboutPageName,
      path: RouterConstants.aboutPagePath,
      builder: (_, __) => const AboutPage(),
    ),
    GoRoute(
      name: RouterConstants.loginPageName,
      path: RouterConstants.loginPagePath,
      builder: (_, __) => const LoginPage(),
    ),
    GoRoute(
      name: RouterConstants.profilePageName,
      path: RouterConstants.profilePagePath,
      builder: (context, state) => ProfilePage(),
      redirect: (context, state) async{
        final bool isLoggedIn = await GoPreference.readValue(); // Replace with actual login check
        return isLoggedIn ? null : RouterConstants.loginPagePath;
      },
    ),
    GoRoute(
      name: RouterConstants.contactUsPageName,
      path: RouterConstants.contactUsPagePath,
      builder: (_, __) => const ContactUsPage(),
    ),
    GoRoute(
      name: RouterConstants.productsPageName,
      path: RouterConstants.productsPagePath,
      builder: (_, __) => const ProductsPage(),
    ),
    GoRoute(
      name: RouterConstants.productPageName,
      path: RouterConstants.productPagePath,
      builder: (_, state) => ProductPage(
        productId: state.pathParameters['productId']??'Unknown',
      ),
    ),
  ],
);
