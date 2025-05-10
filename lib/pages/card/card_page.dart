import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/core/constant/constant.dart';
import '/core/theme/app_styles.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: SvgPicture.asset(
                    'images/dashboard_card.svg',
                  ),
                  title: Text("Merhaba ben Finay! Finans"),
                  subtitle: Text("yolculugunda senin icin buradayim!"),
                  onTap: () {},
                ),
                Spacer(),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {},
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Center(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Selin Cuzdan',
                                  // border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                ),
                              ),
                            ),
                            Positioned(
                              right: 0,
                              child: SvgPicture.asset(
                                'images/ayes.svg',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(width: 16,),
                    SvgPicture.asset(
                      'images/group_eyes.svg',
                    ),
                  ],
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

