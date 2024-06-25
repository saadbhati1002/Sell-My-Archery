import 'package:flutter/material.dart';
import 'package:psxmpc/config/route/route_paths.dart';

import '../../../../../../core/vendor/constant/ps_dimens.dart';
import '../../../../../../core/vendor/provider/language/app_localization_provider.dart';
import '../../../../common/dialog/warning_dialog_view.dart';
import '../../../../common/ps_button_widget.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({required this.callBackAfterLoginSuccess});

  final Function? callBackAfterLoginSuccess;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(
          top: PsDimens.space12,
          left: PsDimens.space16,
          right: PsDimens.space16),
      child: PSButtonWidget(
        colorData: Colors.orange,
        hasShadow: false,
        width: double.infinity,
        titleText: 'Sign Up',
        onPressed: () async {
          await Navigator.pushReplacementNamed(
            context,
            RoutePaths.user_register_container,
          );
        },
      ),
    );
  }

  dynamic callWarningDialog(BuildContext context, String text) {
    showDialog<dynamic>(
        context: context,
        builder: (BuildContext context) {
          return WarningDialog(
            message: text.tr,
            onPressed: () {},
          );
        });
  }
}
