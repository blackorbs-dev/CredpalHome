import 'package:credpalhome/core/util/extensions.dart';
import 'package:credpalhome/core/util/formatter.dart';
import 'package:credpalhome/data/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: context.colors.onSurface.withValues(alpha: 0.2),
      color: context.colors.surface,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsetsGeometry.fromSTEB(10, 0, 10, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    product.image,
                    height: 110,
                    fit: BoxFit.fitHeight,
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: Text(
                    product.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textStyle.titleMedium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Row(
                    children: [
                      Text(
                        product.price.formatPrice(),
                        style: context.textStyle.titleMedium?.copyWith(
                          color: context.colors.primary,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'NotoSans',
                        )
                      ),
                      const SizedBox(width: 8),
                      Text(
                        product.originalPrice.formatPrice(),
                        style: context.textStyle.labelMedium?.copyWith(
                          color: context.colors.secondaryContainer,
                          decoration: TextDecoration.lineThrough,
                          fontFamily: 'NotoSans',
                        )
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 7,
            left: 7,
            child: StoreLogo(logo: product.storeLogo),
          )
        ],
      ),
    );
  }
}

class StoreLogo extends StatelessWidget {
  const StoreLogo({super.key, this.logo});

  final String? logo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 52,
      height: 52,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: context.colors.surface,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: context.colors.onSurface.withValues(alpha: 0.12),
              blurRadius: 6,
              offset: const Offset(0, 2),
            )
          ]
      ),
      child: logo == null? RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              children: [
                TextSpan(
                  text: 'Pay\n',
                  style: context.textStyle.labelMedium?.copyWith(
                    color: context.colors.secondaryContainer,
                  ),
                ),
                TextSpan(
                  text: '40%',
                  style: context.textStyle.titleMedium?.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ]
          )
      ) : Image.asset(
        logo!,
        fit: BoxFit.contain,
        width: 42,
        height: 42,
      ),
    );
  }
}
