import 'package:credpalhome/core/util/extensions.dart';
import 'package:credpalhome/data/local/dummy_products.dart';
import 'package:credpalhome/data/local/dummy_stores.dart';
import 'package:credpalhome/ui/widgets/product_card.dart';
import 'package:credpalhome/ui/widgets/search_box.dart';
import 'package:credpalhome/ui/widgets/store_card.dart';
import 'package:flutter/material.dart';
import '../widgets/header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: Header()),

          const SliverPadding(
            padding: EdgeInsetsGeometry.fromSTEB(24, 18, 20, 20),
            sliver: SliverToBoxAdapter(child: SearchBox())
          ),

          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(12),
              color: context.colors.primaryContainer,
              child: SizedBox(
                height: 392, // required for horizontal GridView
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

          SliverPadding(
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

          SliverPadding(
            padding: const EdgeInsetsGeometry.fromSTEB(10, 20, 10, 32),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 24,
                mainAxisExtent: 92
              ),
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return StoreCard(store: stores[index]);
                },
                childCount: stores.length,
              ),
            ),
          ),
        ],
      )
    );
  }
}
