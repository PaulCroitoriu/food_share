import 'package:flutter/material.dart';

class PagedWithLoading extends StatelessWidget {
  final bool isLoading;
  final Widget child;

  const PagedWithLoading({
    Key? key,
    required this.isLoading,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        if (isLoading)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(71, 0, 0, 0),
            child: const Center(
              child: SizedBox(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }
}
