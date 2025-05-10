import 'package:finbricks_abr_client/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../core/constant/constant.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_styles.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: SizedBox(
          child: Text("Last Transactions"),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
            child: Column(
              children: [
                SizedBox(
                  height: 16,
                ),
                Container(
                  decoration: roundedDecoration,
                  width: double.infinity,
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BALANCE",
                              style: context.textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "3.210,00",
                              style: context.textTheme.headlineLarge,
                            ),
                            const SizedBox(height: 4),
                            const Text("asplay physical"),
                            const SizedBox(height: 4),
                            const Text("5292 49*****31"),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: const Text("Expenses"),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                const Icon(Icons.search),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          SvgPicture.asset(
                            'images/play_card.svg',
                          ),
                          Image.asset(
                            'images/logo.png',
                            height: 24,
                            width: 24,
                            color: kWhite,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                _PaymentDetailsView(),
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

class _PaymentDetailsView extends StatelessWidget {
  const _PaymentDetailsView();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedDecoration,
      width: double.maxFinite,
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            leading: SvgPicture.asset(
              'images/card_circle.svg',
            ),
            title: Text(
              "Grocery",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("Wall Mart"),
            trailing: Column(
              children: [Text("21 May-19:32"), Text("275.03")],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/forward_circle.svg',
              height: 45,
              width: 45,
            ),
            title: Text(
              "Incoming",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("Citibank - SWIFT"),
            trailing: Column(
              children: [Text("18 May-16:32"), Text("750.00")],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/dollar_circle.svg',
              height: 45,
              width: 45,
            ),
            title: Text(
              "Card Payment",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("Mobile Taxi Online"),
            trailing: Column(
              children: [Text("17 May-17:32"), Text("50.54")],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/netflix_circle.svg',
            ),
            title: Text(
              "Netflix Payment",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("NTFLX - 10382243"),
            trailing: Column(
              children: [Text("16 May-16:32"), Text("50.54")],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/youtube_circle.svg',
            ),
            title: Text(
              "Youtube Premium",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("YTBE - premium@gm."),
            trailing: Column(
              children: [Text("15 May-15:32"), Text("50.54")],
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/forward_circle.svg',
              height: 45,
              width: 45,
            ),
            title: Text(
              "Incoming",
              style: context.textTheme.titleSmall,
            ),
            subtitle: Text("Citibank - SWIFT"),
            trailing: Column(
              children: [Text("18 May-16:32"), Text("750.00")],
            ),
          ),
        ],
      ),
    );
  }
}
