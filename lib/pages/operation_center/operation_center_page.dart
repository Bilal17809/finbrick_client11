import 'package:flutter_svg/svg.dart';
import '/core/constant/constant.dart';
import '/core/theme/app_styles.dart';
import 'package:flutter/material.dart';

class OperationCenterPage extends StatelessWidget {
  const OperationCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
          child:Text("Operation Center"),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kBodyHp),
          child: Container(
            decoration: roundedDecoration,
            width: double.maxFinite,
            padding: EdgeInsets.all(12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/Facebook.svg',
                    ),
                    title: Text("Guncel Durum"),
                    subtitle: Text("Your financial wealth"),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/travel-journal.svg',
                    ),
                    title: Text("Birikim Gorevieri"),
                    subtitle: Text("Saving Quest"),
                    trailing: Icon(Icons.arrow_forward_ios)
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/dollar.svg',
                    ),
                    title: Text("Yatirim Gorevieri"),
                    subtitle: Text("Investment Quest"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/LinkedIN.svg',
                    ),
                    title: Text("Veri Girisi"),
                    subtitle: Text("View and edit your income"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/LinkedIN.svg',
                    ),
                    title: Text("Tassaruf"),
                    subtitle: Text("Save money"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/flate_card.svg',
                    ),
                    title: Text("Faturalar"),
                    subtitle: Text("Manage your bills"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/shopping.svg',
                    ),
                    title: Text("Alisveris"),
                    subtitle: Text("Shopping expenses"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/shopping.svg',
                    ),
                    title: Text("Esya"),
                    subtitle: Text("Furniture expenses"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  ListTile(
                    leading: SvgPicture.asset(
                      'images/shopping.svg',
                    ),
                    title: Text("Giyim"),
                    subtitle: Text("Clothes expenses"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
