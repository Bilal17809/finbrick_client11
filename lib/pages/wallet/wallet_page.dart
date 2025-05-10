import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/info_row.dart';
import '../../common_widgets/logo_widget.dart';
import '../../common_widgets/round_image.dart';
import '../../core/constant/constant.dart';
import '../../core/routes/routes_name.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: SizedBox(
          child: Text(
            "Merhaba Selin!",
            style: context.textTheme.titleLarge,
          ),
        ),
        // centerTitle: true,
        actions: [
          RoundedImage(
            size: 60,
            assetPath: 'images/woman_profile.svg',
          ),
          SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
            child: Column(
              children: [
                _CardView(),
                SvgPicture.asset(
                  'images/group_card_wlt.svg',
                ),
                Container(
                  decoration: roundedDecoration,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        "Devoz Cevirica",
                        style: context.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/blue_country_icon.svg',
                            height: 20,
                            width: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Euro"),
                                Icon(Icons.arrow_drop_down),
                                Text("5000,00"),
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/red_counrty.svg',
                            height: 20,
                            width: 20,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text("Try"),
                                Icon(Icons.arrow_drop_down),
                                Text("8,0000"),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  RoutesName.transactionPage,
                                  (route) => false,
                                );
                              },
                              child: const Text("AI/Sat"),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              SizedBox(
                height: 30,
                child: LogoWidget(),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hesaplarim",
                    style: context.textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Raportar",
                    style: context.textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tasarruf",
                    style: context.textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Birikim",
                    style: context.textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              Divider(),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Piyasalar",
                    style: context.textTheme.bodyLarge,
                  ),
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              Divider(),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'images/drawer_circle.svg',
                    width: 24,
                    height: 24,
                  ),
                  Text(
                    "Destek Hatti",
                    style: context.textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CardView extends StatelessWidget {
  const _CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedDecoration,
      width: double.maxFinite,
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("images/logo.png", height: 18),
                  const SizedBox(height: 5),
                  const Text("Bakiye Puan"),
                  const SizedBox(height: 5),
                  const Text("1742 220"),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Text("5293 59***31"),
                  SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset(
                    "images/eye_circle.svg",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            spacing: 16,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Yukle"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("QR Kod IIe Ode"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          KeyValueText(
            title: "Varklar:",
            value: "580.504 \$",
            textColor: greenColor,
            icon: Icons.arrow_drop_up_sharp,
          ),
          KeyValueText(
            title: "Bordar:",
            value: "580.504 \$",
            textColor: kRed,
            icon: Icons.arrow_drop_down_sharp,
          ),
          KeyValueText(
            title: "Net Vatlik:",
            value: "580.504 \$",
            textColor: greenColor,
            icon: Icons.arrow_drop_up_sharp,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
