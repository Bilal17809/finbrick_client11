import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/common_dots.dart';
import '../../core/constant/constant.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          height: 20,
          child: Text("Cards"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
            child: Column(
              children: [
                SvgPicture.asset('images/big_setting_card.svg'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Physical-Active"),
                    SizedBox(
                      width: 16,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5.0),
                      decoration: roundedDecoration.copyWith(
                        borderRadius: BorderRadius.circular(2),
                        border: Border.all(color: kBlack),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'images/apple_icon.svg',
                          ),
                          Text("Pay"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotIndicator(isActive: true), // Blue
                    const SizedBox(width: 8),
                    DotIndicator(isActive: false), // Grey
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.lock,
                          size: 30,
                        ),
                        const Text('Card Block'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.visibility, size: 30),
                        const Text('Card Details'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.more_horiz, size: 30),
                        const Text('Change PIN'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                ListTile(
                  title: Text(
                    "Cash Withdrawals",
                    style: context.textTheme.titleSmall,
                  ),
                  subtitle: Text("Enable cash withdrawals on ATMs"),
                  trailing: Switch(
                    activeTrackColor: greenColor,
                    value: _isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    "Online Payment",
                    style: context.textTheme.titleSmall,
                  ),
                  subtitle: Text("Enables online payments"),
                  trailing: Switch(
                    activeTrackColor: greenColor,
                    value: _isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: Text(
                    "Apple Pay",
                    style: context.textTheme.titleSmall,
                  ),
                  subtitle: Text("Enables payments with Apple devices"),
                  trailing: Switch(
                    activeTrackColor: greenColor,
                    value: _isSwitched,
                    onChanged: (bool value) {
                      setState(() {
                        _isSwitched = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
