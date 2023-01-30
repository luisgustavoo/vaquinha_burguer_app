import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/colors_app.dart';
import 'package:vaquinha_burguer_app/app/core/ui/styles/text_styles_app.dart';
import 'package:vaquinha_burguer_app/app/models/products_model.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({required this.product, super.key});

  final ProductsModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.h,
        horizontal: 20.w,
      ),
      child: SizedBox(
        height: 100.h,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: context.textStylesApp.textExtraBold.copyWith(
                      fontSize: 16.sp,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      product.description,
                      style: context.textStylesApp.textLight.copyWith(
                        color: context.colors.textLightColor,
                      ),
                    ),
                  ),
                  Text(
                    NumberFormat.currency(
                      locale: 'Pt-Br',
                      symbol: r'R$',
                      decimalDigits: 2,
                    ).format(product.price),
                    style: context.textStylesApp.textMedium.copyWith(
                      color: context.colors.priceColor,
                    ),
                  ),
                ],
              ),
            ),
            Image.network(
              product.image,
              height: 95.h,
              width: 73.w,
            )
          ],
        ),
      ),
    );
  }
}
