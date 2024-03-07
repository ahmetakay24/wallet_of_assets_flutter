import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:varlik_yonetimi/core/core_methods.dart';
import 'package:varlik_yonetimi/core/core_utiliys.dart';
import 'package:varlik_yonetimi/screens/forgot_password/widgets/forgot_password_resources.dart';
import 'package:varlik_yonetimi/screens/login/login.dart';

class ForgotPasswordAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ForgotPasswordAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.only(
            left: responsiveResizer(DeviceSize(context).height, 1.30),
            top: responsiveResizer(DeviceSize(context).height, 1.30)),
        child: IconButton(
          onPressed: () => Navigator.push(
            context,
            PageTransition(type: PageTransitionType.leftToRight, child: const LoginScreen()),
          ),
          icon: Icon(
            Icons.arrow_back_ios,
            color: VarlikYonetimiColors().goldColors,
            size: 35,
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordTitle extends StatelessWidget {
  const ForgotPasswordTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ForgotPasswordTurkishItems().forgotPasswordTitleText,
      style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 50),
    );
  }
}

class ForgotPasswordSubtitle extends StatelessWidget {
  const ForgotPasswordSubtitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      ForgotPasswordTurkishItems().forgotPasswordSubtitleText,
      style: TextStyle(color: VarlikYonetimiColors().goldColors, fontSize: 22),
    );
  }
}
