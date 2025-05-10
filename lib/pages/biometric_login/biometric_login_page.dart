import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/common_widgets.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_styles.dart';

class BiometricLogin extends StatelessWidget {
  const BiometricLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: SizedBox(
          height: 20,
          child: LogoWidget(),
        ),
        centerTitle: true,
        actions: [
          NotificationIconButton(
            onTap: () {},
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            width: double.maxFinite,
            padding: EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Biometric Login',
                    style: context.textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: Text(
                    'Verification Line 1 Line 2 Line 3',
                    style: context.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'images/Face-ID.svg',
                    ),
                    SizedBox(width: 16,),
                    SvgPicture.asset(
                      'images/Touch-ID.svg',
                    ),
                  ],
                ),

                Spacer(),
                TextButton(
                  onPressed: () {

                  },
                  child: Text('Login'),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.accountCreatedPage);
                  },
                  child: Text('Continue'),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
