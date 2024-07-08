import 'package:flutter/material.dart';

import '../../../../../vendor_ui/dashboard/components/drawer/widgets/membership_menu_widget.dart';

class CustomMembershipMenuWidget extends StatelessWidget {
  const CustomMembershipMenuWidget({this.updateSelectedIndexWithAnimation});
  final Function? updateSelectedIndexWithAnimation;

  @override
  Widget build(BuildContext context) {
    return MembershipMenuWidget(
      updateSelectedIndexWithAnimation: updateSelectedIndexWithAnimation,
    );
  }
}
