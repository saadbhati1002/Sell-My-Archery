import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../../../core/vendor/constant/ps_dimens.dart';
import '../../../../../../../core/vendor/viewobject/common/ps_value_holder.dart';
import '../../../../../../../core/vendor/viewobject/product.dart';
import '../../../../core/vendor/constant/ps_constants.dart';
import '../../../custom_ui/item/list_item/product_horizontal_list_item.dart';

class ProductHorizontalListWidget extends StatelessWidget {
  const ProductHorizontalListWidget(
      {required this.tagKey,
      required this.productList,
      required this.isLoading,
      this.height});
  final List<Product>? productList;
  final String tagKey;
  final bool isLoading;
  final double? height;

/*  @override
  Widget build(BuildContext context) {
    final CategoryProvider provider = Provider.of<CategoryProvider>(context);
    final PsValueHolder valueHolder = Provider.of<PsValueHolder>(context);
    return ListView.builder(
        shrinkWrap: true,
        itemCount: provider.dataLength,
        itemBuilder: (BuildContext context, int index) {
          if (provider.hasData) {
            return valueHolder.isShowSubcategory!
                ? CustomCategoryTileWithExpansion(
                selectedData: selectedData,
                category: provider.categoryList.data![index],
                onSubCategoryClick: onSubCategoryClick)
                : CustomCategoryTile(
                selectedData: selectedData,
                category: provider.categoryList.data![index],
                onCategoryClick: onCategoryClick);
          } else {
            return const SizedBox();
          }
        });
  }*/

  @override
  Widget build(BuildContext context) {
    final PsValueHolder valueHolder =
        Provider.of<PsValueHolder>(context, listen: false);
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      // height: (productList!.length*100)+350,
      //height: (productList!.length*100)+1100,
      // height: (productList!.length*100)+1300,
      //height: double.infinity,
      width: double.infinity,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: isLoading
            ? valueHolder.loadingShimmerItemCount
            : productList!.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0.0,
            mainAxisSpacing: 2.0,
            //mainAxisExtent: 5.0,
            childAspectRatio: 0.814),
        itemBuilder: (context, index) {
          if (!isLoading &&
              productList![index].adType == PsConst.GOOGLE_AD_TYPE) {
            return const SizedBox();
          }
          return CustomProductHorizontalListItem(
            tagKey: tagKey,
            product: isLoading ? Product() : productList![index],
            isLoading: isLoading,
          );
        },
      ),
      // height: 300,
      // height ??
      //     (valueHolder.isShowOwnerInfo!
      //         ? PsDimens.space280
      //         : PsDimens.space220),
      // margin: const EdgeInsets.only(left: PsDimens.space14),
      // width: MediaQuery.of(context).size.width,
      // child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: isLoading
      //         ? valueHolder.loadingShimmerItemCount
      //         : productList!.length,
      //     itemBuilder: (BuildContext context, int index) {
      //       if (!isLoading &&
      //           productList![index].adType == PsConst.GOOGLE_AD_TYPE) {
      //         // return const SizedBox();
      //       }
      //       return CustomProductHorizontalListItem(
      //         tagKey: tagKey,
      //         product: isLoading ? Product() : productList![index],
      //         isLoading: isLoading,
      //       );
      //     })
    );
    //print("gzdggfdgggsg${productList!.length}");
  }

/*  @override
  Widget build(BuildContext context) {
    final PsValueHolder valueHolder = Provider.of<PsValueHolder>(context, listen: false);
    return Container(
        height: height ??
            (valueHolder.isShowOwnerInfo!
                ? PsDimens.space280
                : PsDimens.space220),
        margin: const EdgeInsets.only(left: PsDimens.space14),
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            shrinkWrap: true,
            //itemCount: provider.dataLength,
            scrollDirection: Axis.horizontal,
            itemCount: isLoading
                ? valueHolder.loadingShimmerItemCount
                : productList!.length,
            itemBuilder: (BuildContext context, int index) {
              if (!isLoading &&
                  productList![index].adType == PsConst.GOOGLE_AD_TYPE) {
                return const SizedBox();
              }
              return CustomProductHorizontalListItem(
                tagKey: tagKey,
                product: isLoading ? Product() : productList![index],
                isLoading: isLoading,
              );
            }));
  }*/
}
