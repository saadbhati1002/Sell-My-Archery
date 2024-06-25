import 'package:flutter/material.dart';

import '../../../../../vendor_ui/user/login/component/widgets/signup_button.dart';

class CustomSignUpButton extends StatelessWidget {
  const CustomSignUpButton({required this.callBackAfterLoginSuccess});

  final Function? callBackAfterLoginSuccess;
  @override
  Widget build(BuildContext context) {
    return SignUpButton(
      callBackAfterLoginSuccess: callBackAfterLoginSuccess,
    );
  }
}
