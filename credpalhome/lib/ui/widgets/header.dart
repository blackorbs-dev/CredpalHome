import 'package:credpalhome/core/util/extensions.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {

    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: RichText(
            text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Pay later\neverywhere',
                      style: context.textStyle.headlineMedium
                  ),
                  WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6, bottom: 4),
                        child: Image.asset(
                          'assets/icons/ic_info.png',
                          width: 18,
                          height: 18,
                        ),
                      )
                  )
                ]
            ),
          )),
          Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Shopping limit: ₦0',
                  style: context.textStyle.labelMedium?.copyWith(
                    color: context.colors.onSurface,
                    fontFamily: 'NotoSans', // Avenir font could not display the "₦" symbol
                  ),
                ),
                const SizedBox(height: 8),
                FilledButton(
                    onPressed: (){},
                    style: FilledButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      backgroundColor: context.colors.primary,
                      foregroundColor: context.colors.onPrimary,
                    ),
                    child: Text(
                        'Activate Credit',
                        style: context.textStyle.titleSmall?.copyWith(
                          color: context.colors.onPrimary,
                        )
                    )
                )
              ]
          )
        ]
    );
  }
}
