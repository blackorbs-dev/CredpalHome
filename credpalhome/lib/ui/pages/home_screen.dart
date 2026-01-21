import 'package:credpalhome/core/util/extensions.dart';
import 'package:credpalhome/data/local/dummy_products.dart';
import 'package:credpalhome/data/local/dummy_stores.dart';
import 'package:credpalhome/ui/widgets/product_card.dart';
import 'package:credpalhome/ui/widgets/responsive_insets.dart';
import 'package:credpalhome/ui/widgets/search_box.dart';
import 'package:credpalhome/ui/widgets/store_card.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final systemBarPadding = MediaQuery.of(context).padding;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: ResponsiveInset(
                  backgroundColor: context.colors.secondary,
                  padding: EdgeInsetsGeometry.fromSTEB(22, systemBarPadding.top+36, 16, 36),
                  child: const Header()
              )
          ),

          const ResponsiveSliverInset(
            padding: EdgeInsetsGeometry.fromSTEB(24, 18, 20, 20),
            sliver: SliverToBoxAdapter(child: SearchBox())
          ),

          SliverToBoxAdapter(
            child: ResponsiveInset(
              padding: const EdgeInsets.all(12),
              backgroundColor: context.colors.primaryContainer,
              child: SizedBox(
                height: 398, // required for horizontal GridView
                child: GridView.builder(
                  padding: const EdgeInsetsGeometry.fromSTEB(4,0,4,4),
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 171
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ),
              ),
            ),
          ),

          ResponsiveSliverInset(
            padding: const EdgeInsetsGeometry.fromSTEB(22, 28, 18, 4),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Merchants',
                    style: context.textStyle.titleLarge,
                  ),
                  Text(
                    'View all',
                    style: context.textStyle.bodySmall?.copyWith(
                      color: context.colors.primary,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ],
              ),
            ),
          ),

          ResponsiveSliverInset(
            padding: EdgeInsetsGeometry.fromSTEB(10, 20, 10, systemBarPadding.bottom + 28),
            sliver: SliverLayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.crossAxisExtent;
                const minTileWidth = 88.0;
                final count = (width / minTileWidth).floor().clamp(3, 6);

                return SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: count,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 12,
                    mainAxisExtent: 104,
                  ),
                  delegate: SliverChildBuilderDelegate(
                        (context, index) => StoreCard(store: stores[index]),
                    childCount: stores.length,
                  ),
                );
              },
            ),
          ),
        ],
      )
    );
  }
}
