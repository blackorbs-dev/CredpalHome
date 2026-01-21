import 'package:credpalhome/core/util/extensions.dart';
import 'package:credpalhome/data/models/store.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  const StoreCard({super.key, required this.store});

  final Store store;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: 62,
            height: 62,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  bottom: 0,
                  right: 0,
                  child: Container(
                    width: 61,
                    height: 61,
                    padding: store.color == null ? null : const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: store.color,
                      shape: BoxShape.circle,
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        store.image,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                if(store.isOnline) Positioned(
                  top: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 9,
                    backgroundColor: context.colors.surface,
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: context.colors.tertiary,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              store.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textStyle.labelMedium,
            ),
          )
        ],
      );
  }
}
