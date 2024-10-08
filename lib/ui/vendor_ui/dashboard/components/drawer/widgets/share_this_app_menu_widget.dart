import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:psxmpc/config/ps_colors.dart';
import 'package:psxmpc/core/vendor/provider/language/app_localization_provider.dart';
import 'package:psxmpc/core/vendor/viewobject/common/ps_value_holder.dart';
import '../../../../../../core/vendor/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class ShareThisAppMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final PsValueHolder psValueHolder = Provider.of<PsValueHolder>(context);
    return ListTile(
      leading: Icon(
        Icons.share_outlined,
        size: 22,
        color: Utils.isLightMode(context)
            ? PsColors.achromatic800
            : PsColors.achromatic50, //PsColors.primary500,
      ),
      minLeadingWidth: 0,
      title: Text(
        'home__menu_drawer_share_this_app'.tr,
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(fontWeight: FontWeight.w400),
      ),
      onTap: () {
        Navigator.pop(context);

        if (Platform.isAndroid) {
          final Size size = MediaQuery.of(context).size;
          Share.share(
            psValueHolder.googlePlayStoreUrl!,
            sharePositionOrigin:
                Rect.fromLTWH(0, 0, size.width, size.height / 2),
          );
        } else if (Platform.isIOS) {
          final Size size = MediaQuery.of(context).size;
          Share.share(
            psValueHolder.appleAppStoreUrl!,
            sharePositionOrigin:
                Rect.fromLTWH(0, 0, size.width, size.height / 2),
          );
        }
      },
    );
  }
}
