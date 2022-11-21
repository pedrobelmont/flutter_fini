import 'dart:developer';

import 'package:finaceiro_flutter/common/const/epp_colors.dart';
import 'package:flutter/material.dart';
import 'package:finaceiro_flutter/common/const/epp_text_style.dart';
import '../../common/widgets/praime_bottom.dart';
import '../../common/widgets/text_log.dart';

class onboardingPage extends StatelessWidget {
  const onboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColos.iceWhite,
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Expanded(
              flex: 2,
              child: Container(
                // color: Color.fromARGB(255, 238, 248, 247),
                child: Image.asset('assets/images/man.png'),
              ),
            ),
            Text(
              'spand smarter',
              style: EppTextStyles.mindText.copyWith(color: AppColos.corPd2),
            ),
            Text(
              'save More',
              style: EppTextStyles.mindText
                  .copyWith(color: Color.fromARGB(255, 26, 191, 125)),
            ),
            const SizedBox(
              height: 24.0,
            ),
            PraimeBottom(
              text: 'Get Started',
              onPress: () {
                log('msg');
              },
            ),
            const SizedBox(
              height: 17.0,
            ),
            textLog(),
            const SizedBox(
              height: 40,
            ),
          ],
        ));
  }
}
