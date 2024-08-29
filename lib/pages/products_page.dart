import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter/pages/page_wrapper.dart';
import 'package:gorouter/router/router_constants.dart';
import 'package:gorouter/widgets/product_tile.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageWrapper(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Visit our products:"),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ProductTile(
                  productId: 'product1',
                  productName: 'Product 1',
                ),
                ProductTile(
                  productId: 'product2',
                  productName: 'Product 2',
                ),
                ProductTile(
                  productId: 'product3',
                  productName: 'Product 3',
                ),
              ],
            )
          ],
        ),
      ),
      onPreviousPressed: () {
        context.go(RouterConstants.contactUsPagePath);
      },
    );
  }
}
