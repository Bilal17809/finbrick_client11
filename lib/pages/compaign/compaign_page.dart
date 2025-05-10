import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../common_widgets/icon_buttons.dart';
import '../../core/constant/constant.dart' show kBodyHp;
import '../../core/theme/app_styles.dart';

class CompaignPage extends StatelessWidget {
  const CompaignPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIconButton(),
        title: Text("Campaigns"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            width: double.maxFinite,
            padding: const EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CampaignCardView(imagePath: 'images/Mask3.svg',title: 'New Gaming Compaigns!'),
                  CampaignCardView(imagePath: 'images/Mask2.svg',title: 'Get 50% off on Netflix'),
                  CampaignCardView(imagePath: 'images/Mask.svg ',title: 'compaign 3'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}

class CampaignCardView extends StatelessWidget {
  final String title;
  final String imagePath;
  const CampaignCardView({super.key, required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: roundedDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5),
              topRight: Radius.circular(5),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 180,
              child: SvgPicture.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            padding: const EdgeInsets.all(12),
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
