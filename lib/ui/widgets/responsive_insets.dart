import 'package:flutter/widgets.dart';

class ResponsiveSliverInset extends StatelessWidget {
  const ResponsiveSliverInset({
    super.key,
    required this.sliver,
    this.maxWidth = 1200,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  final Widget sliver;
  final double maxWidth;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return SliverLayoutBuilder(
      builder: (context, constraints) {
        // For vertical scrolling, crossAxisExtent == viewport width
        final viewportWidth = constraints.crossAxisExtent;

        final extraPadding = viewportWidth > maxWidth
            ? (viewportWidth - maxWidth) / 2
            : 0.0;

        return SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: extraPadding).add(padding),
          sliver: sliver,
        );
      },
    );
  }
}

class ResponsiveInset extends StatelessWidget {
  const ResponsiveInset({
    super.key,
    required this.child,
    this.maxWidth = 1200,
    this.backgroundColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16),
  });

  final Widget child;
  final double maxWidth;
  final Color? backgroundColor;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final extraPadding = constraints.maxWidth > maxWidth
            ? (constraints.maxWidth - maxWidth) / 2
            : 0.0;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: extraPadding).add(padding),
          color: backgroundColor,
          child: child,
        );
      },
    );
  }
}
