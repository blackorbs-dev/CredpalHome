import 'package:credpalhome/core/util/extensions.dart';
import 'package:flutter/material.dart';
import 'svg_icon.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SearchBar(
            hintText: 'Search for products or stores',
            hintStyle: WidgetStateProperty.all(
                context.textStyle.bodySmall?.copyWith(
                    color: context.colors.secondaryContainer
                )
            ),
            elevation: WidgetStateProperty.all(0),
            backgroundColor: WidgetStateProperty.all(
                context.colors.primaryContainer
            ),
            constraints: const BoxConstraints(minHeight: 44, maxHeight: 44),
            leading: Padding(
              padding: const EdgeInsets.only(left: 8, right: 3),
              child: SvgIcon(
                'assets/icons/ic_search.svg',
                color: context.colors.secondaryContainer,
                size: 20,
              )
            ),
            shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)
                )
            ),
          ),
        ),
        Container(
          width: 48,
          height: 48,
          margin: const EdgeInsets.only(left: 24),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: context.colors.primaryContainer,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgIcon(
            'assets/icons/ic_scan.svg',
            color: context.colors.onSurface
          ),
        )
      ],
    );
  }
}
