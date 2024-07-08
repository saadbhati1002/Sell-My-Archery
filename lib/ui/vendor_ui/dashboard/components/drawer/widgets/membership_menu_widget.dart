import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:psxmpc/config/ps_colors.dart';
import 'package:psxmpc/config/route/route_paths.dart';
import 'package:psxmpc/core/vendor/provider/language/app_localization_provider.dart';
import 'package:psxmpc/core/vendor/viewobject/common/ps_value_holder.dart';
import '../../../../../../core/vendor/constant/ps_constants.dart';
import '../../../../../../core/vendor/utils/utils.dart';

class MembershipMenuWidget extends StatelessWidget {
  const MembershipMenuWidget({this.updateSelectedIndexWithAnimation});
  final Function? updateSelectedIndexWithAnimation;
  @override
  Widget build(BuildContext context) {
    final PsValueHolder? valueHolder = Provider.of<PsValueHolder>(context);

    return ListTile(
      leading: Icon(Icons.attach_money,
          size: 22,
          color: Utils.isLightMode(context)
              ? PsColors.achromatic800
              : PsColors.achromatic50),
      minLeadingWidth: 0,
      title: Text(
        'Buy Package',
        style: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(fontWeight: FontWeight.w400),
      ),
      onTap: () async {
        Navigator.pop(context);
        await Navigator.pushNamed(context, RoutePaths.buyPackage,
            arguments: <String, dynamic>{
              'android': valueHolder!.packageAndroidKeyList,
              'ios': valueHolder.packageIOSKeyList
            });
      },
    );
  }
}
