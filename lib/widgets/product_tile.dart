import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/router/router_constants.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
    required this.productId,
    required this.productName,
  });

  final String productId;
  final String productName;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(
          RouterConstants.productPageName,
          pathParameters: {'productId': productId},
        );
      },
      child: Text(
        'Product: $productName',
        style: TextStyle(
          fontSize: 15,
          color: Colors.blue,
        ),
      ),
    );
  }
}
