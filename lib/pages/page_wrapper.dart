import 'package:flutter/material.dart';

class PageWrapper extends StatelessWidget {
  const PageWrapper({
    super.key,
    required this.child,
    this.onNextPressed,
    this.onPreviousPressed,
  });

  final Widget child;
  final VoidCallback? onNextPressed;
  final VoidCallback? onPreviousPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (onPreviousPressed != null)
                  FloatingActionButton(
                    heroTag: 'PREVIOUS_PAGE',
                    child: Icon(Icons.chevron_left),
                    onPressed: onPreviousPressed,
                  ),
                if (onNextPressed != null)
                  FloatingActionButton(
                    heroTag: 'NEXT_PAGE',
                    child: Icon(Icons.chevron_right),
                    onPressed: onNextPressed,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
