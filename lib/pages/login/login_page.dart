import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../common_widgets/logo_widget.dart';
import '../../common_widgets/round_image.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showProfile = false;

  void toggleProfile() {
    setState(() {
      showProfile = !showProfile;
    });
  }

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
          NotificationIconButton(onTap: () {
            Navigator.pushNamed(context, RoutesName.notificationPage);
          }),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [MoonIconButton(onTap: () {})],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    RoundedImage(size: 70, assetPath: 'images/Account-Profile.svg'),
                    OutlinedButton.icon(
                      onPressed: toggleProfile,
                      icon: SvgPicture.asset('images/arrow_switch.svg',
                          width: 24, height: 24),
                      label: Text(''),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text('Welcome to finbrick', style: context.textTheme.titleMedium),
                const SizedBox(height: 4),
                Text('Good Day',
                    style: context.textTheme.headlineMedium
                        ?.copyWith(color: skyTextColor)),
                const SizedBox(height: 16),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Username',
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                const SizedBox(height:8),
                TextFormField(
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.forgetPage);
                      },
                      child: Text('Forgotten'),
                    ),
                    Spacer(),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.dashboardPage);
                        },
                        child: Text('Login'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 50),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.compaignPage);
                  },
                  icon: SvgPicture.asset(
                    'images/Compaigns.svg',
                  ),
                  label: Text(' Campaign '),
                ),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon:SvgPicture.asset(
                    'images/ATM-Map.svg',
                  ),
                  label: Text(' ATM Map '),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.supportPage);
                  },
                  icon:SvgPicture.asset(
                    'images/Support.svg',
                  ),
                  label: Text(' Support '),
                ),
                SizedBox(height: 16,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

