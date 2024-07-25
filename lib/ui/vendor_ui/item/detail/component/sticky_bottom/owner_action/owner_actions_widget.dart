import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psxmpc/core/vendor/provider/language/app_localization_provider.dart';
import 'package:psxmpc/core/vendor/provider/user/user_provider.dart';
import 'package:psxmpc/core/vendor/viewobject/common/ps_value_holder.dart';

import '../../../../../../../../core/vendor/provider/app_info/app_info_provider.dart';
import '../../../../../../../../core/vendor/provider/product/product_provider.dart';
import '../../../../../../../../core/vendor/viewobject/product.dart';
import '../../../../../../custom_ui/item/detail/component/sticky_bottom/owner_action/widgets/change_status_widget.dart';
import '../../../../../../custom_ui/item/detail/component/sticky_bottom/owner_action/widgets/delete_widget.dart';
import '../../../../../../custom_ui/item/detail/component/sticky_bottom/owner_action/widgets/mark_as_sold_widget.dart';
import '../../../../../../custom_ui/item/detail/component/sticky_bottom/owner_action/widgets/promote_item_widget.dart';

class OwnerActionButtonsWidget extends StatelessWidget {
  UserProvider? providerUser;
  late PsValueHolder psValueHolder;
  late AppLocalization langProvider;
  @override
  Widget build(BuildContext context) {
    providerUser = Provider.of<UserProvider>(context);
    final ItemDetailProvider provider =
        Provider.of<ItemDetailProvider>(context);
    final Product product = provider.product;
    final AppInfoProvider appInfoprovider =
        Provider.of<AppInfoProvider>(context);
    psValueHolder = Provider.of<PsValueHolder>(context);
    langProvider = Provider.of<AppLocalization>(context);
    if (providerUser?.data.data?.userId != psValueHolder.loginUserId) {
      providerUser!.getUser(psValueHolder.loginUserId ?? '',
          langProvider.currentLocale.languageCode);
    }
    return Consumer<AppInfoProvider>(builder:
        (BuildContext context, AppInfoProvider appInfoProvider, Widget? child) {
      print(appInfoProvider.psValueHolder!.userEmail);
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomDeleteItemWidget(),
          if (!product.isSoldOutItem) CustomMarkAsSoldWidget(),
          CustomChangeStatusWidget(),
          if (appInfoProvider.appInfo.data != null &&
              product.isItemPromotable &&
              !appInfoprovider.isAllPaymentDisable)
            if (providerUser!.user.data?.userEmail !=
                "bhati1saad1002@gmail.com")
              CustomPromoteItemWidget(),
        ],
      );
    });
  }
}
